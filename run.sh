#!/bin/bash
set -euo pipefail

# Source spec for the Daily REST API: the published docs copy by default.
# Set SPEC_SRC to a URL or a local file (e.g. pluot-core/docs/openapi.json)
# to generate from something else.
SPEC_SRC="${SPEC_SRC:-https://docs.daily.co/openapi.json}"

# Make a relative SPEC_SRC file path absolute, then work from the repo root:
# the generator writes to "." and the jq filter lives in scripts/.
if [[ ! "$SPEC_SRC" =~ ^https?:// ]]; then
    SPEC_SRC="$(cd "$(dirname "$SPEC_SRC")" && pwd)/$(basename "$SPEC_SRC")"
fi
cd "$(dirname "$0")"

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
    --additional-properties=enumUnknownDefaultCase=true \
