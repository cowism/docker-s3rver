FROM node:alpine

## Update to latest node by pushing update to github on 08-Apr-2018

RUN set -x \
    && npm install -g s3-proxy s3rver\
    && mkdir -p /data

ENTRYPOINT ["s3rver"]

CMD ["-d", "/data", "-p", "8080", "-h", "0.0.0.0"]
