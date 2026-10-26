FROM alpine:latest

ARG PBVERSION=0.40.6

RUN apk add --no-cache \
    unzip \
    ca-certificates \
    openssh

ADD https://github.com/pocketbase/pocketbase/releases/download/v0.40.6/pocketbase_0.40.6_linux_amd64.zip
RUN unzip /tmp/pb.zip -d /pb/

EXPOSE 8080

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]
