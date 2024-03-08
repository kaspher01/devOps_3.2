#!/bin/bash

echo "FROM node:14" > Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "COPY package.json /app" >> Dockerfile
echo "RUN npm install" >> Dockerfile
echo "COPY app.js /app" >> Dockerfile
echo "EXPOSE 8080" >> Dockerfile
echo "CMD [\"npm\", \"start\"]" >> Dockerfile

docker build -t express-app .
docker run -p 8080:8080 --name express-container express-app

rm Dockerfile

echo "Aplikacja Express uruchomiona na porcie 8080."
