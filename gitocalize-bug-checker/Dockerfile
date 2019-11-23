FROM alpine:3.10

RUN apk add --no-cache git grep

COPY "entrypoint.sh" "/"

ENTRYPOINT ["/entrypoint.sh"]
