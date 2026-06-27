#!/bin/bash
set -e

# Start Node.js API in background
cd /app/api
yarn start &
API_PID=$!

# Wait for API to be ready
sleep 3

# Start Caddy in foreground
cd /app
exec caddy run --config Caddyfile