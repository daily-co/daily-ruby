#!/bin/bash
set -euo pipefail

# Source spec for the Daily REST API. The source of truth is
# pluot-core/docs/openapi.json; docs.daily.co/openapi.json is the published
# copy of it, and is the default because it needs no pluot-core checkout.
# The published copy can lag a pluot-core merge, so if a spec change you
# expect is missing, set SPEC_SRC to a URL or a local file
# (e.g. ~/git/pluot-core/docs/openapi.json) to generate from that instead.
SPEC_SRC="${SPEC_SRC:-https://docs.daily.co/openapi.json}"

# Make a relative SPEC_SRC file path absolute, then work from the repo root:
# the generator writes to "." and the jq filter lives in scripts/.
if [[ ! "$SPEC_SRC" =~ ^https?:// ]]; then
    SPEC_SRC="$(cd "$(dirname "$SPEC_SRC")" && pwd)/$(basename "$SPEC_SRC")"
fi
cd "$(dirname "$0")"
echo "Generating from $SPEC_SRC" >&2

RAW="$(mktemp "${TMPDIR:-/tmp}/daily-oas-raw.XXXXXX")"
SPEC="$(mktemp "${TMPDIR:-/tmp}/daily-oas.XXXXXX")"
trap 'rm -f "$RAW" "$SPEC"' EXIT
if [[ "$SPEC_SRC" =~ ^https?:// ]]; then
    curl -fsSL "$SPEC_SRC" -o "$RAW"
else
    cp "$SPEC_SRC" "$RAW"
fi

# Remove doc-only "default" values before generating. See
# scripts/strip-placeholder-defaults.jq for why.
jq -f scripts/strip-placeholder-defaults.jq "$RAW" > "$SPEC"

openapi-generator generate -g ruby -o . \
    -i "$SPEC" \
    --additional-properties=gemName=daily-ruby \
    --additional-properties=moduleName=Daily \
    --additional-properties=gemVersion=1.0.5 \
    --additional-properties=gemLicense=MIT \
    --additional-properties=gemAuthor=Daily \
    --additional-properties=gemAuthorEmail=help@daily.co \
    --additional-properties=gemDescription="The official Daily API Ruby client" \
    --additional-properties=gemSummary="The official Daily API Ruby client" \
    --additional-properties=gemHomepage="https://www.github.com/daily-co/daily-ruby" \
    --additional-properties=disallowAdditionalPropertiesIfNotPresent=false \
    --additional-properties=library=faraday \
    --additional-properties=enumUnknownDefaultCase=true

# The jq filter only knows the placeholder shapes it has seen. Fail loudly if
# one got through, instead of shipping it in the next release.
# Defaults land in model initializers as `self.<attr> = '<value>'`.
if grep -rnE "self\.[a-z_]+ = '(NULL|<not set>|The closest available region[^']*|[./][^']*\{[a-z_]+\}[^']*|[^']*\{[a-z_]+\}[^']*[./])'" lib/daily-ruby/models/; then
    echo "A placeholder default survived generation (see above)." >&2
    echo "Update scripts/strip-placeholder-defaults.jq to strip it." >&2
    exit 1
fi
