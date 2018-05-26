#!/bin/bash

. ./json_functions

function produce_source() {
  echo '{"action":"order","pi":3.1415926,'
  echo '"resource":{'
  echo '"prime_id":"SRC_1","vm_id":"VM_X","type":"UP",'
  echo '"number_x":42,"description":"json parser"}'
  echo '}'
}

response_body=$(produce_source)

echo "JSON:"
echo "${response_body}"
echo
echo "Pretty print:"
echo "${response_body}" | json_parse -p
echo
echo "JSONPath:"
echo "${response_body}" | json_parse -e '$.resource.prime_id'
echo
echo "${response_body}" | json_parse -e '$.resource.type'
echo
echo "${response_body}" | json_parse -e '$.pi'
echo

