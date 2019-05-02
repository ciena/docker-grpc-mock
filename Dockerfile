FROM node:8.16-jessie
MAINTAINER Ciena Corporation

ENV NODE_PATH=/usr/local/lib/node_modules
RUN npm config set unsafe-perm true
RUN npm install grpc-mock --global
EXPOSE 50051

ENTRYPOINT ["node"]
