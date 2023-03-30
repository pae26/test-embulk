FROM openjdk:8

RUN curl -o /usr/local/bin/embulk --create-dirs -L "https://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk

RUN embulk gem install embulk-input-sqlserver
RUN embulk gem install embulk-output-mysql

RUN apt update && apt install -y mariadb-client && rm -rf /var/lib/apt/lists/*

WORKDIR /root

COPY migrate-sqlserver-to-mysql.yml.liquid .
COPY entrypoint.sh .

CMD [ "./entrypoint.sh" ]
