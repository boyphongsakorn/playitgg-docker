FROM aarch64/alpine:latest
RUN apk add --no-cache --update curl
#git gcc build-base alpine-sdk
RUN mkdir -p /app/
WORKDIR /app/
RUN curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output playit-aarch64-0.4.6
COPY playit-aarch64-0.4.6 /app/
RUN chmod +x /app/playit-aarch64-0.4.6
RUN [[ -f /app/playit-aarch64-0.4.6 ]] && echo "This file exists!"
CMD /app/playit-aarch64-0.4.6
