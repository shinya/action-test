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
  }' | jq 'to_entries | map(.key + " " + .value.result)' #| join("\n")'