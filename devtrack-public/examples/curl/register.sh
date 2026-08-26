#!/usr/bin/env bash
set -e
curl -X POST "https://devtrack-private.onrender.com/api/v1/auth/register" \
  -H "Content-Type: application/json" \
  -d '{"firstName":"John","lastName":"Doe","email":"john@example.com","password":"Password@123"}'
