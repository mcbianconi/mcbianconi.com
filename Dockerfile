FROM golang:1.21-alpine

RUN apk add git
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo

WORKDIR /app
COPY . /app

RUN hugo -d public