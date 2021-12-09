#FROM aarch64/alpine:latest
FROM aarch64/ubuntu:17.04
WORKDIR '/app'
RUN apt install --only-upgrade ca-certificates
COPY playit-aarch64-0.4.6 ./
COPY . .
#RUN chmod a+x playit-aarch64-0.4.6
RUN chmod 0755 playit-aarch64-0.4.6
CMD ./playit-aarch64-0.4.6
#CMD apk add --no-cache --update curl
#CMD curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output /playit-aarch64-0.4.6
#CMD chmod +x /playit-aarch64-0.4.6
#CMD [[ -f /playit-aarch64-0.4.6 ]] && echo "This file exists!"
#CMD /playit-aarch64-0.4.6
