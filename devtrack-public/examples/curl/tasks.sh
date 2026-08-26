#!/usr/bin/env bash
set -e
: "${DEVTRACK_TOKEN:?Set DEVTRACK_TOKEN first}"
: "${PROJECT_ID:?Set PROJECT_ID first}"
curl -X GET "https://devtrack-private.onrender.com/api/v1/projects/$PROJECT_ID/tasks" \
  -H "Authorization: Bearer $DEVTRACK_TOKEN"
