# Usa la imagen oficial de n8n
FROM n8nio/n8n:1.105.4

# Establece la carpeta de trabajo
WORKDIR /data

# Copia el archivo .env (Render también puede inyectar variables desde su panel)
# Si usas Render, NO pongas aquí el .env directamente para evitar exponer claves
# COPY .env /data/.env

# Puerto por defecto de n8n
EXPOSE 5678

# Configura variables para que Render mantenga datos persistentes
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=silverdry
ENV N8N_BASIC_AUTH_PASSWORD=silverdry02

# Base de datos Supabase
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=YOUR_SUPABASE_HOST
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=YOUR_SUPABASE_DB
ENV DB_POSTGRESDB_USER=YOUR_SUPABASE_USER
ENV DB_POSTGRESDB_PASSWORD=YOUR_SUPABASE_PASSWORD
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false

# Evitar que se pierdan flujos/credenciales
VOLUME ["/data"]

# Ejecuta n8n
CMD ["n8n"]
