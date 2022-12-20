FROM node:18.12.1-alpine3.16
WORKDIR /app
COPY . .
RUN npm cache clean --force
RUN npm install
RUN npm install -g @angular/cli
RUN node_modules/.bin/ng build
EXPOSE 4200
ENTRYPOINT [ "npm" , "start" ]  




