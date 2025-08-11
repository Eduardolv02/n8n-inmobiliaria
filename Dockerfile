# Imagen base oficial de N8N
FROM n8nio/n8n:latest

# Establecer variables de entorno por defecto
ENV NODE_ENV=production

# Copiar archivo .env dentro del contenedor
COPY .env /home/node/.n8n/.env

# Exponer el puerto que usa N8N
EXPOSE 5678

# Comando para iniciar N8N
CMD ["n8n", "start"]
