# https://hub.docker.com/_/alpine/
FROM alpine:3.12

MAINTAINER Stefan Schulte-Ortbeck <info@codefighters.de>


RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            lftp \
 && rm -rf /var/cache/apk/*
