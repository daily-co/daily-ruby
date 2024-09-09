#!/bin/bash

openapi-generator generate -g ruby -o . \
    -i ~/git/pluot-core/north-star/packages/docs-site/lib/oas/index.yaml \
    --additional-properties=gemName=daily-ruby \
    --additional-properties=moduleName=Daily \
    --additional-properties=gemVersion=1.0.2 \
    --additional-properties=gemLicense=MIT \
    --additional-properties=gemAuthor=Daily \
    --additional-properties=gemAuthorEmail=help@daily.co \
    --additional-properties=gemDescription="The official Daily API Ruby client" \
    --additional-properties=gemSummary="The official Daily API Ruby client" \
    --additional-properties=gemHomepage="https://www.github.com/daily-co/daily-ruby" \
    --additional-properties=disallowAdditionalPropertiesIfNotPresent=false \
    --additional-properties=library=faraday \
    --additional-properties=enumUnknownDefaultCase=true \
