FROM alpine:3.19.0
LABEL MAINTAINER "Florian Piesche <florian@yellowkeycard.net>"

RUN apk add --no-cache --virtual .run-deps rsync openssh tzdata curl ca-certificates && rm -rf /var/cache/apk/*
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["sh"]
