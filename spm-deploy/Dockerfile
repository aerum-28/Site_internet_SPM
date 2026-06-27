FROM node:20-alpine

WORKDIR /app

# Copy everything
COPY . .

# Install Yarn
RUN npm install -g yarn

# Install dependencies for API
WORKDIR /app/api
RUN yarn install

# Back to app root
WORKDIR /app

# Make start script executable
RUN chmod +x start.sh

# Install Caddy
RUN apk add --no-cache caddy

# Run start script
CMD ["bash", "start.sh"]