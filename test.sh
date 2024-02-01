#!/bin/bash

echo '{
    "Hello": {
      "result": "success",
      "outputs": {}
    },
    "fail-job": {
      "result": "failure",
      "outputs": {}
    },
    "skip-job": {
      "result": "skipped",
      "outputs": {}
    }
  }' | jq 'to_entries | map(.value.result)' | jq -r .[] | grep -v success | wc -l 