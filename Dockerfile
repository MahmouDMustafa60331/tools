FROM node:18.12.1-alpine3.16
WORKDIR /app
COPY . .
RUN npm cache clean --force
RUN npm install
RUN chown -R 1010910000:0 "/.npm"
EXPOSE 4200
ENTRYPOINT npm start




