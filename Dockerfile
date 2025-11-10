# Usa a imagem oficial pré-compilada do n8n (sem rebuild)
FROM docker.io/n8nio/n8n:latest

# Define variáveis padrão
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Cria diretório para dados
WORKDIR /home/node

RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
EXPOSE 5678

CMD ["n8n", "start"]
