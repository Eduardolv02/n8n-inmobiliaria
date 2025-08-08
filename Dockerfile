FROM n8nio/n8n

# Si quieres, puedes dejar solo la auth y logs, pero NO protocol/port aquí
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=silverdry
ENV N8N_BASIC_AUTH_PASSWORD=silverdry02
ENV TRUST_PROXY=true
ENV LOG_LEVEL=debug

EXPOSE 5678
