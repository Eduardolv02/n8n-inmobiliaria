FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

USER node

# Variables de entorno (prod)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=silverdry
ENV N8N_BASIC_AUTH_PASSWORD=silverdry02
ENV N8N_HOST=n8n-inmobiliaria-axt2.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-inmobiliaria-axt2.onrender.com
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=db.hswdnipmofzcgziszfei.supabase.co
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=postgres
ENV DB_POSTGRESDB_USER=postgres
ENV DB_POSTGRESDB_PASSWORD=silverdry02
ENV DB_POSTGRESDB_SSL=true

# Script de keep-alive
RUN echo '#!/bin/sh\n\
while true; do\n\
  curl -s https://n8n-inmobiliaria-axt2.onrender.com > /dev/null\n\
  sleep 300\n\
done &' > /home/node/keepalive.sh && chmod +x /home/node/keepalive.sh

# Exponer puerto
EXPOSE 5678

# Arrancar keep-alive y n8n juntos
CMD ["/bin/sh", "-c", "/home/node/keepalive.sh & n8n start"]
