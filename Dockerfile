# Usa uma imagem base com Java (versão 17 é ideal para MC 1.17+)
FROM openjdk:17-jdk

# Cria diretório de trabalho
WORKDIR /mc

# Copia todos os arquivos do seu diretório local para o container
COPY . .

# Expõe a porta padrão do Minecraft
EXPOSE 25565

# Comando para rodar o servidor
CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "server.jar", "nogui"]
