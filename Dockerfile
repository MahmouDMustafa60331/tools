FROM node:18.12.1-alpine3.16
WORKDIR /app
COPY . .
USER root
RUN npm cache clean --force
RUN npm install -g --unsafe-perm=true --allow-root
EXPOSE 4200
ENTRYPOINT [ "npm" , "start" ]




