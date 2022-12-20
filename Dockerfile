FROM node:18.12.1-alpine3.16
WORKDIR /app
COPY . .
USER root
RUN npm cache clean --force
RUN npm install
EXPOSE 4200
ENTRYPOINT [ "npm" , "start" ]




