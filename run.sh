#!/bin/bash
set -euo pipefail

# Regenerates the daily-ruby client from Daily's OpenAPI spec.
#
# Usage:
#   ./run.sh                                   # published spec (default)
#   SPEC_SRC=~/git/pluot-core/docs/openapi.json ./run.sh
#   SPEC_SRC=https://example.com/openapi.json ./run.sh
#   SPEC_SRC=git:~/git/pluot-core@<commit-or-branch>:docs/openapi.json ./run.sh
#
# Source spec for the Daily REST API. The source of truth is
# pluot-core/docs/openapi.json; docs.daily.co/openapi.json is the published
# copy of it, and is the default because it needs no pluot-core checkout.
# The published copy can lag a pluot-core merge, so if a spec change you
# expect is missing, set SPEC_SRC to one of:
#   - a URL
#   - a local file (for example ~/git/pluot-core/docs/openapi.json)
#   - a git object, written git:<repo>@<ref>:<path>. The file is read with
#     `git show`, so nothing in that repo is checked out or changed.
# Where the spec came from is written to .openapi-generator/SPEC_SOURCE so it
# is committed with the regenerated code.
SPEC_SRC="${SPEC_SRC:-https://docs.daily.co/openapi.json}"

GEM_VERSION="1.1.0"

# The generator is pinned. run.sh downloads the jar once, checks it against
# the checksums below, and caches it. Do not use a brew or npm install: their
# versions drift and the output changes with them.
# Maven Central publishes only .sha1 and .md5 next to this jar. The sha1 below
# is the published one. The sha256 was computed from a download that matched it.
OPENAPI_GENERATOR_VERSION="7.26.0"
OPENAPI_GENERATOR_URL="https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${OPENAPI_GENERATOR_VERSION}/openapi-generator-cli-${OPENAPI_GENERATOR_VERSION}.jar"
OPENAPI_GENERATOR_SHA1="b96b148fcf482808037f68fbad99cb4d7e65d40b"
OPENAPI_GENERATOR_SHA256="1760050094997b9cc790cc1350be095f15da8c08a996b184d3eadc4ccda5e35e"
CACHE_DIR="${DAILY_RUBY_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/daily-ruby}"
JAR="$CACHE_DIR/openapi-generator-cli-${OPENAPI_GENERATOR_VERSION}.jar"

expand_home() {
    # Turn a leading ~ into $HOME, since it is not expanded inside quotes.
    case "$1" in
        "~"|"~/"*) printf '%s\n' "$HOME${1#\~}" ;;
        *) printf '%s\n' "$1" ;;
    esac
}

# Resolve SPEC_SRC before changing directory, so relative paths work.
SPEC_KIND=""
GIT_REPO=""
GIT_REF=""
GIT_PATH=""
if [[ "$SPEC_SRC" =~ ^https?:// ]]; then
    SPEC_KIND="url"
elif [[ "$SPEC_SRC" == git:* ]]; then
    SPEC_KIND="git"
    rest="${SPEC_SRC#git:}"
    GIT_REPO="$(expand_home "${rest%%@*}")"
    rest="${rest#*@}"
    GIT_REF="${rest%%:*}"
    GIT_PATH="${rest#*:}"
    if [[ -z "$GIT_REPO" || -z "$GIT_REF" || -z "$GIT_PATH" || "$GIT_PATH" == "$rest" ]]; then
        echo "SPEC_SRC git form is git:<repo>@<ref>:<path>, got: $SPEC_SRC" >&2
        exit 1
    fi
    GIT_REPO="$(cd "$GIT_REPO" && pwd)"
else
    SPEC_KIND="file"
    SPEC_SRC="$(expand_home "$SPEC_SRC")"
    SPEC_SRC="$(cd "$(dirname "$SPEC_SRC")" && pwd)/$(basename "$SPEC_SRC")"
fi

# Work from the repo root: the generator writes to "." and the jq filter
# lives in scripts/.
cd "$(dirname "$0")"

fetch_generator() {
    if [[ ! -f "$JAR" ]]; then
        mkdir -p "$CACHE_DIR"
        echo "Downloading openapi-generator-cli $OPENAPI_GENERATOR_VERSION to $JAR" >&2
        curl -fsSL "$OPENAPI_GENERATOR_URL" -o "$JAR.part"
        mv "$JAR.part" "$JAR"
    fi
    local sha1 sha256
    sha1="$(shasum -a 1 "$JAR" | cut -d' ' -f1)"
    sha256="$(shasum -a 256 "$JAR" | cut -d' ' -f1)"
    if [[ "$sha1" != "$OPENAPI_GENERATOR_SHA1" || "$sha256" != "$OPENAPI_GENERATOR_SHA256" ]]; then
        echo "Checksum mismatch for $JAR" >&2
        echo "  sha1   got $sha1, want $OPENAPI_GENERATOR_SHA1" >&2
        echo "  sha256 got $sha256, want $OPENAPI_GENERATOR_SHA256" >&2
        echo "Delete the file and run again. If it still fails, do not use it." >&2
        exit 1
    fi
}
fetch_generator

RAW="$(mktemp "${TMPDIR:-/tmp}/daily-oas-raw.XXXXXX")"
SPEC="$(mktemp "${TMPDIR:-/tmp}/daily-oas.XXXXXX")"
trap 'rm -f "$RAW" "$SPEC"' EXIT

# Fetch the spec and write down where it came from.
# No timestamp here: git records when, and a rerun on the same spec should
# leave no diff.
PROVENANCE=("generator: openapi-generator-cli $OPENAPI_GENERATOR_VERSION"
            "spec_src: $SPEC_SRC")
case "$SPEC_KIND" in
    url)
        curl -fsSL "$SPEC_SRC" -o "$RAW"
        ;;
    git)
        commit="$(git -C "$GIT_REPO" rev-parse --verify "$GIT_REF^{commit}")"
        git -C "$GIT_REPO" show "$commit:$GIT_PATH" > "$RAW"
        branches="$(git -C "$GIT_REPO" branch --contains "$commit" --format='%(refname:short)' | paste -sd, -)"
        PROVENANCE+=("git_repo: $GIT_REPO"
                     "git_ref: $GIT_REF"
                     "git_commit: $commit"
                     "git_branches_containing_commit: ${branches:-none}"
                     "git_path: $GIT_PATH")
        ;;
    file)
        cp "$SPEC_SRC" "$RAW"
        # If the file lives in a git checkout (for example pluot-core), record
        # the branch and commit, and whether the file had local edits.
        if top="$(git -C "$(dirname "$SPEC_SRC")" rev-parse --show-toplevel 2>/dev/null)"; then
            rel="${SPEC_SRC#"$top"/}"
            dirty="no"
            if ! git -C "$top" diff --quiet HEAD -- "$rel" 2>/dev/null; then
                dirty="yes"
            fi
            PROVENANCE+=("git_repo: $top"
                         "git_branch: $(git -C "$top" rev-parse --abbrev-ref HEAD)"
                         "git_commit: $(git -C "$top" rev-parse HEAD)"
                         "git_path: $rel"
                         "git_uncommitted_changes_in_file: $dirty")
        fi
        ;;
esac
PROVENANCE+=("spec_sha256: $(shasum -a 256 "$RAW" | cut -d' ' -f1)")

echo "Generating from:" >&2
printf '  %s\n' "${PROVENANCE[@]}" >&2

# Remove doc-only "default" values before generating. See
# scripts/strip-placeholder-defaults.jq for why.
jq -f scripts/strip-placeholder-defaults.jq "$RAW" > "$SPEC"

# Remember which files the last run generated, so files for models the spec
# dropped can be removed afterwards (the generator never deletes anything).
OLD_FILES="$(mktemp "${TMPDIR:-/tmp}/daily-oas-files.XXXXXX")"
trap 'rm -f "$RAW" "$SPEC" "$OLD_FILES"' EXIT
if [[ -f .openapi-generator/FILES ]]; then
    cp .openapi-generator/FILES "$OLD_FILES"
fi

# templates/ruby holds our overrides of the stock templates (only README for
# now, so the hand-written auth docs survive a regen).
java -jar "$JAR" generate -g ruby -o . \
    -i "$SPEC" \
    -t templates/ruby \
    --additional-properties=gemName=daily-ruby \
    --additional-properties=moduleName=Daily \
    --additional-properties=gemVersion="$GEM_VERSION" \
    --additional-properties=gemLicense=MIT \
    --additional-properties=gemAuthor=Daily \
    --additional-properties=gemAuthorEmail=help@daily.co \
    --additional-properties=gemDescription="The official Daily API Ruby client" \
    --additional-properties=gemSummary="The official Daily API Ruby client" \
    --additional-properties=gemHomepage="https://www.github.com/daily-co/daily-ruby" \
    --additional-properties=disallowAdditionalPropertiesIfNotPresent=false \
    --additional-properties=library=faraday \
    --additional-properties=enumUnknownDefaultCase=true

# Delete files the last run generated that this run did not, skipping any
# path listed in .openapi-generator-ignore (ignored paths drop out of FILES
# too, and those are hand-maintained). Patterns are matched as shell globs,
# and "dir/**" matches everything under dir/.
is_ignored() {
    local path="$1" pattern
    while IFS= read -r pattern || [[ -n "$pattern" ]]; do
        pattern="${pattern%%#*}"
        pattern="${pattern%"${pattern##*[![:space:]]}"}"
        [[ -z "$pattern" || "$pattern" == !* ]] && continue
        if [[ "$pattern" == */\*\* ]]; then
            [[ "$path" == "${pattern%\*\*}"* ]] && return 0
        elif [[ "$path" == $pattern ]]; then
            return 0
        fi
    done < .openapi-generator-ignore
    return 1
}
if [[ -s "$OLD_FILES" ]]; then
    while IFS= read -r stale; do
        [[ -z "$stale" ]] && continue
        is_ignored "$stale" && continue
        if [[ -f "$stale" ]]; then
            rm -f -- "$stale"
            echo "Deleted stale generated file: $stale" >&2
        fi
    done < <(comm -23 <(sort -u "$OLD_FILES") <(sort -u .openapi-generator/FILES))
fi

# Load the hand-written compatibility layer (lib/daily-ruby/compat.rb, listed
# in .openapi-generator-ignore) after the generated code. Only add the line
# if it is not there yet, so running this script twice is safe.
if ! grep -qxF "require 'daily-ruby/compat'" lib/daily-ruby.rb; then
    printf "\n# Hand-maintained. Keeps code written for older daily-ruby versions working.\nrequire 'daily-ruby/compat'\n" >> lib/daily-ruby.rb
fi

# Every generated Ruby file must parse.
syntax_errors=0
while IFS= read -r -d '' f; do
    if ! ruby -c "$f" > /dev/null; then
        echo "Syntax error in $f" >&2
        syntax_errors=1
    fi
done < <(find lib -name '*.rb' -print0)
if [[ "$syntax_errors" -ne 0 ]]; then
    echo "Generated code has syntax errors (see above)." >&2
    exit 1
fi

# The jq filter strips every schema default, so no model should fill in a
# value the caller did not set. Defaults land in model initializers as
# `self.<attr> = <literal>`. The only allowed right-hand sides are the
# caller's value (attributes[...] or value) and nil for a required field.
# Fail loudly if anything else shows up, instead of shipping it.
if grep -rnE "^ *self\.[a-z_0-9]+ = " lib/daily-ruby/models/ \
    | grep -vE "self\.[a-z_0-9]+ = (attributes\[|value$|nil$)"; then
    echo "A model fills in a default the caller did not set (see above)." >&2
    echo "Update scripts/strip-placeholder-defaults.jq to strip it." >&2
    exit 1
fi

# Write $HOME as ~ so the committed file does not hold a personal path.
printf '%s\n' "${PROVENANCE[@]}" | sed "s#$HOME#~#g" > .openapi-generator/SPEC_SOURCE
echo "Wrote .openapi-generator/SPEC_SOURCE" >&2
