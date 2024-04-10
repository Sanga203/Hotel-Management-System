
FROM postgres:latest


ENV POSTGRES_DB hotel
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 12345


#COPY init.sql /docker-entrypoint-initdb.d/


EXPOSE 5432

RUN echo "GRANT ALL PRIVILEGES ON DATABASE hotel TO postgres;" > /docker-entrypoint-initdb.d/grant.sql
