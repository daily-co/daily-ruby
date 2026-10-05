# The Daily API docs spec uses "default" for some fields to show doc text
# (like "NULL") or values the API itself rejects (a recordings template that
# ends in "."). The generator turns every "default" into a value the SDK sends
# on each request, so those values end up saved on rooms and domains, or make
# the request fail. Drop them before generating, and mark the field nullable
# so callers can send null to clear a bad value an older SDK version saved.
# Real defaults are kept.
def placeholder:
  . == "NULL"
  or . == "<not set>"
  or startswith("The closest available region")
  or test("\\{epoch_time\\}.*\\.$");

walk(
  if type == "object" and (.default | type) == "string" and (.default | placeholder)
  then del(.default) | .nullable = true
  else .
  end
)
