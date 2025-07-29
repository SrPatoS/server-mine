FROM openjdk:21-jdk

WORKDIR /mc
COPY . .
EXPOSE 25565

CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "server.jar", "nogui"]
