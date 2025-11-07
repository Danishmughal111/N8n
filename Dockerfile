FROM node:20-alpine

# Install system dependencies
RUN apk update && apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    && rm -rf /var/cache/apk/*

# Install n8n globally
RUN npm install -g n8n@1.46.0

# Create n8n config directory
RUN mkdir -p /home/node/.n8n

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=neo123vision
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://neo-vision-n8n.onrender.com
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
