#!/bin/bash
set -euo pipefail

# Source spec for the Daily REST API (lives in the pluot-core repo).
SPEC_SRC="${SPEC_SRC:-$HOME/git/pluot-core/docs/openapi.json}"

# Remove doc-only "default" values before generating. See
# scripts/strip-placeholder-defaults.jq for why.
SPEC="$(mktemp "${TMPDIR:-/tmp}/daily-oas.XXXXXX")"
trap 'rm -f "$SPEC"' EXIT
jq -f "$(dirname "$0")/scripts/strip-placeholder-defaults.jq" "$SPEC_SRC" > "$SPEC"

openapi-generator generate -g ruby -o . \
    -i "$SPEC" \
    --additional-properties=gemName=daily-ruby \
    --additional-properties=moduleName=Daily \
    --additional-properties=gemVersion=1.0.3 \
    --additional-properties=gemLicense=MIT \
    --additional-properties=gemAuthor=Daily \
    --additional-properties=gemAuthorEmail=help@daily.co \
    --additional-properties=gemDescription="The official Daily API Ruby client" \
    --additional-properties=gemSummary="The official Daily API Ruby client" \
    --additional-properties=gemHomepage="https://www.github.com/daily-co/daily-ruby" \
    --additional-properties=disallowAdditionalPropertiesIfNotPresent=false \
    --additional-properties=library=faraday \
    --additional-properties=enumUnknownDefaultCase=true \
