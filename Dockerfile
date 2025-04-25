# Imagem base do MongoDB
FROM mongo:latest

# Defina o usuário para executar o processo do MongoDB
USER mongodb

# Exponha a porta padrão do MongoDB
EXPOSE 27017

# CMD com comandos para inicialização do servidor MongoDB
CMD ["mongod", "--bind_ip", "0.0.0.0"]