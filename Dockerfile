FROM n8nio/n8n:latest

# Configuración del entorno
ENV NODE_ENV=production

# Puerto por defecto de n8n
EXPOSE 5678

# Comando de arranque
CMD ["n8n", "start"]
