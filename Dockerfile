FROM n8nio/n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=silverdry
ENV N8N_BASIC_AUTH_PASSWORD=silverdry02
ENV N8N_HOST=n8n-inmobiliaria-axt2.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_OAUTH_CALLBACK_URL=https:https://n8n-inmobiliaria-axt2.onrender.com:5678/rest/oauth2-credential/callback

EXPOSE 5678
