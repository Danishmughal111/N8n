FROM n8nio/n8n:latest

# Environment variables directly set karo
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=apna_strong_password_yahan_dalo

# Port expose karo
EXPOSE 5678

# n8n start karo
CMD ["n8n", "start"]
