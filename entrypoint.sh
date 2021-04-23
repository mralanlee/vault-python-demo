#!/bin/bash
set -eu

if [ "${1}" = "app" ]; then
  python3 -m flask run --host=0.0.0.0 --port=3000
else
  echo "Invalid option"
  exit 1
fi
