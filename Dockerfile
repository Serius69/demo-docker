FROM debian:10.11

RUN apt update

RUN apt install -y curl

RUN curl -0 https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jdk17.0.2-win_x64.zip

RUN tar -xvf zulu17.32.13-ca-jdk17.0.2-win_x64.zip

ENV JAVA_HOME /zulu17.32.13-ca-jdk17.0.2-linux_aarch64.tar.gz

ENV PATH $JAVA_HOME/bin:$PATH

RUN env

WORKDIR /app

COPY . .

RUN /app/mvnw clean package

ENTRYPOINT ["/app/mvnw" , "spring-boot:run"]
