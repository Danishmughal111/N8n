FROM n8nio/n8n:latest

# Required environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=apna_strong_password

# Optional but recommended
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV GENERIC_TIMEZONE=Asia/Kolkata

EXPOSE 5678

# N8n automatically start ho jayega
