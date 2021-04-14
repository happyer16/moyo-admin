FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --silent
COPY . .
CMD [ "npm", "test2" ]
EXPOSE 9000
