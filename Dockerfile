FROM node:18-alpine

# Install dependencies required for n8n
RUN apk add --update --no-cache \
    git \
    python3 \
    build-base \
    ca-certificates

# Set working directory
WORKDIR /data

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Expose the port
EXPOSE 10000

# Start n8n
CMD ["n8n", "start"]
