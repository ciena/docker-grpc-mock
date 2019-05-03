FROM node:8.16-alpine
MAINTAINER Ciena Corporation

RUN apk add --update git
ENV NODE_PATH=/usr/local/lib/node_modules
RUN npm config set unsafe-perm true
# Installing a Ciena fork until patchset is merged to root
RUN npm install ciena/grpc-mock --global
EXPOSE 50051

ENTRYPOINT ["node"]
