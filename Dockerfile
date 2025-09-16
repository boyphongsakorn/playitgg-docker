#FROM aarch64/alpine:latest
FROM ubuntu:20.04
RUN mkdir /app
WORKDIR '/app'
RUN apt-get update
RUN apt-get install ca-certificates -y
RUN update-ca-certificates
#COPY playit-aarch64-0.4.6 /app
COPY . /app
#RUN chmod a+x playit-aarch64-0.4.6
# RUN chmod 0755 /app/playit-0.9.3-aarch64
# CMD /app/playit-0.9.3-aarch64
#CMD apk add --no-cache --update curl
#CMD curl -L https://playit.gg/downloads/playit-aarch64-0.4.6 --output /playit-aarch64-0.4.6
#CMD chmod +x /playit-aarch64-0.4.6
#CMD [[ -f /playit-aarch64-0.4.6 ]] && echo "This file exists!"
#CMD /playit-aarch64-0.4.6

RUN chmod 0755 /app/playit-0.9.3* 

# Use a shell to check the architecture and run the correct binary
CMD ["/bin/sh", "-c", "arch=$(uname -m); \
    if [ \"$arch\" = \"aarch64\" ] || [ \"$arch\" = \"arm64\" ]; then \
        exec /app/playit-0.9.3-aarch64; \
    else \
        exec /app/playit-0.9.3; \
    fi"]