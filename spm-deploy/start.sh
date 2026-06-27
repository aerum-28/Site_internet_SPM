#!/bin/bash
set -e

# Start Node.js API in background
cd /app/api
npm install
npm start &
API_PID=$!

# Wait for API to be ready
sleep 3

# Start Caddy in foreground (exec remplace le processus shell)
cd /app
exec caddy run --config Caddyfile