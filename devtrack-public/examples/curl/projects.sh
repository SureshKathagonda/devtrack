#!/usr/bin/env bash
set -e
: "${DEVTRACK_TOKEN:?Set DEVTRACK_TOKEN first}"
curl -X GET "https://devtrack-private.onrender.com/api/v1/projects" \
  -H "Authorization: Bearer $DEVTRACK_TOKEN"
