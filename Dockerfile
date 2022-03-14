FROM node:12.22.10-alpine3.14
WORKDIR /app
RUN apk add git

ENV TZ=Europe/Rome

COPY ck_docker_package.json package.json

RUN yarn install

# docker build -t foo/vue .
# docker run -v $PWD:/app -it foo/vue yarn --version # example
