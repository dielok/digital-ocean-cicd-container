FROM alpine:3.16.0

RUN apk update \
    && apk upgrade \
    && apk add wget

RUN cd ~ \
    && wget https://github.com/digitalocean/doctl/releases/download/v1.77.0/doctl-1.77.0-linux-amd64.tar.gz \
    && tar xf ~/doctl-1.77.0-linux-amd64.tar.gz \
    && mv ~/doctl /usr/local/bin \
    && rm -rfv ~/doctl ~/doctl-1.77.0-linux-amd64.tar.gz