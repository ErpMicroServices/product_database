FROM postgres:9.6.1

ENV POSTGRES_DB=product_database
ENV POSTGRES_USER=product_database
ENV POSTGRES_PASSWORD=product_database

RUN apt-get update -qq && \
    apt-get install -y apt-utils postgresql-contrib

ADD *.sql /docker-entrypoint-initdb.d/
