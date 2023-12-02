FROM node:18
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE ${APP_PORT_LOCAL}
CMD [ "npm", "start"]