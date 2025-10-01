FROM n8nio/n8n:latest

# Set environment variables for Render
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Expose port
EXPOSE 10000

# The official image already has the correct CMD
