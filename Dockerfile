# Usamos la imagen oficial de n8n
FROM n8nio/n8n:latest

# Cambiamos a usuario root para permisos (opcional si necesitas instalar algo)
USER root

# (No necesitas instalar apt-get ni curl si no vas a modificar la imagen)

# Cambiamos de nuevo a usuario n8n (node) para seguridad
USER node

# Copiar el archivo .env al contenedor (opcional, depende cómo despliegues)
# COPY .env /home/node/.n8n/.env

# Exponer el puerto de n8n
EXPOSE 5678

# Variables de entorno definidas para Docker (alternativa a .env)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=silverdry
ENV N8N_BASIC_AUTH_PASSWORD=silverdry02
ENV N8N_HOST=n8n-inmobiliaria-axt2.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-inmobiliaria-axt2.onrender.com
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=aws-0-us-east-1.pooler.supabase.com
ENV DB_POSTGRESDB_PORT=6543
ENV DB_POSTGRESDB_DATABASE=postgres
ENV DB_POSTGRESDB_USER=postgres.hswdnipmofzcgziszfei
ENV DB_POSTGRESDB_PASSWORD=silverdry0213.
ENV DB_POSTGRESDB_SSL=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Comando por defecto ya viene en la imagen para iniciar n8n
