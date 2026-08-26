#!/usr/bin/env bash
set -e
curl -X POST "https://devtrack-private.onrender.com/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"john@example.com","password":"Password@123"}'
