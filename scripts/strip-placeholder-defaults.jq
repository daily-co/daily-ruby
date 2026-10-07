# Removes every "default" from the request and response schemas before
# generating.
#
# Why: the generator turns each "default" into a value the SDK fills in and
# sends on every request, even when the caller never set that field. That is
# wrong for an API client. On create it can override a domain setting, and on
# update it can switch a feature off (for example enable_dialout: false sent
# with every POST /rooms/:name). It also makes response models show values the
# server never sent. In the spec, defaults are documentation for people. The
# server owns the real defaults and applies them itself. So the SDK must only
# send what the caller set.
#
# Some defaults were never real values at all. They are doc text (like "NULL")
# or values the API rejects (a recordings template that ends in "."). An older
# SDK version saved those on rooms and domains, so those fields are also marked
# nullable, which lets callers send null to clear them.
#
# Query and path parameter defaults are kept. The generator does not send
# them on its own, it only shows them in the docs.
#
# run.sh checks the generated models afterwards and fails if any default
# assignment survived.
def placeholder:
  . == "NULL"
  or . == "<not set>"
  or startswith("The closest available region")
  # A path template ("{domain_name}/...") that starts or ends with "." or "/".
  # The API rejects those (validateS3PathTemplate in pluot-core).
  or (test("\\{[a-z_]+\\}") and test("^[./]|[./]$"));

def strip_defaults:
  walk(
    if type == "object" and has("default") then
      (if (.default | type) == "string" and (.default | placeholder)
       then .nullable = true
       else .
       end)
      | del(.default)
    else .
    end
  );

(if .components.schemas then .components.schemas |= strip_defaults else . end)
| (if .components.responses then .components.responses |= strip_defaults else . end)
| (if .components.requestBodies then .components.requestBodies |= strip_defaults else . end)
| .paths |= map_values(
    map_values(
      if type == "object" then
        (if has("requestBody") then .requestBody |= strip_defaults else . end)
        | (if has("responses") then .responses |= strip_defaults else . end)
      else .
      end
    )
  )
