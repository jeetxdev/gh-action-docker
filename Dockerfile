FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.twh3bgh.mongodb.net
ENV MONGODB_USERNAME test
ENV MONGODB_PASSWORD Test@1234

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]