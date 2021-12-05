FROM alpine:3.14
RUN apk add --update curl
RUN curl -L https://playit.gg/downloads/playit-linux_64-0.4.6