# Use a imagem oficial já compilada do n8n
FROM n8nio/n8n:latest

# Define variáveis básicas
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production

# Define diretório de trabalho
WORKDIR /home/node

# Cria diretório de dados com permissões
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Troca para o usuário node (oficial do n8n)
USER node

# Expõe a porta 5678
EXPOSE 5678

# Corrige permissões do arquivo de config (recomendado)
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Inicia o n8n
CMD ["n8n", "start"]
