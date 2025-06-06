FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME Cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.twh3bgh.mongodb.net
ENV MONGODB_USERNAME test-admin
ENV MONGODB_PASSWORD ks7LhaWv3nIZOt7o

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]