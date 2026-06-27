FROM node:20-alpine

WORKDIR /app

# Copy everything
COPY . .

# Install dependencies for the entire monorepo (root + workspaces)
RUN yarn install

# Make start script executable
RUN chmod +x start.sh

# Install Caddy
RUN apk add --no-cache caddy

# Run start script
CMD ["bash", "start.sh"]
