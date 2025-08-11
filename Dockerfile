FROM n8nio/n8n:latest

# Instalar Node (opcional si quieres keep-alive script)
USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

USER node

# Variables de entorno (puedes dejarlas en el panel de Render mejor que aquí)
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

# Exponer puerto
EXPOSE 5678

# Comando para iniciar n8n
CMD ["n8n", "start"]
