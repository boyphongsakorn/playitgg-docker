FROM alpine:3.14
RUN apk add --update curl
RUN curl https://playit.gg/downloads/playit-linux_64-0.4.6 --output playit-linux_64-0.4.6
RUN chmod a+x playit-linux_64-0.4.6
CMD playit-linux_64-0.4.6