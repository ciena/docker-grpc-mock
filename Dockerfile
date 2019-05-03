FROM node:8.16-alpine
MAINTAINER Ciena Corporation

ENV NODE_PATH=/usr/local/lib/node_modules
RUN npm config set unsafe-perm true
RUN npm install grpc-mock --global
COPY patches/index.js.patch /tmp/index.js.patch
RUN patch $NODE_PATH/grpc-mock/index.js < /tmp/index.js.patch
EXPOSE 50051

ENTRYPOINT ["node"]
