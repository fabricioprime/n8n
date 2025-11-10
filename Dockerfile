# Imagem oficial do n8n
FROM n8nio/n8n:latest

# Define a porta padrão
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
EXPOSE 5678

# Diretório de trabalho
WORKDIR /data

# Comando para iniciar o n8n
CMD ["n8n", "start"]
