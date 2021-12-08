FROM aarch64/alpine:latest
RUN apk add --no-cache --update curl git gcc build-base alpine-sdk
RUN mkdir -p ./app/
RUN curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output ./app/playit-aarch64-0.4.6
RUN chmod a+x ./app/playit-aarch64-0.4.6
CMD ./app/playit-aarch64-0.4.6
