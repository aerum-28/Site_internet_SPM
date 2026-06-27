#!/bin/bash
set -e

# Start Node.js API in background
cd /app/api
npm install
npm start &
API_PID=$!

# Wait for API to be ready
sleep 2

# Start Caddy
cd /app
caddy run --config Caddyfile

# Cleanup
kill $API_PID 2>/dev/null || true