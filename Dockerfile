FROM alpine:3.16.3
LABEL MAINTAINER "Florian Piesche <florian@yellowkeycard.net>"

RUN apk add --no-cache --virtual .run-deps rsync openssh tzdata curl ca-certificates && rm -rf /var/cache/apk/*
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["sh"]
