#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM postgres
COPY ./init.sql/add-user.sh /docker-entrypoint-initdb.d/
COPY ./init.sql/dump /docker-entrypoint-initdb.d/

