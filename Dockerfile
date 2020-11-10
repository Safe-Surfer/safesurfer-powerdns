FROM alpine:3.12
ENV PDNS_LUA_VER=5.3 \
  LMDB_LOCATION=/app/lmdbtmpfs
RUN addgroup --gid 250 recursor && adduser -G recursor --uid 250 recursor -H -D -s /bin/false
RUN apk update --no-cache && \
  apk add --no-cache pdns-recursor tzdata bind-tools ca-certificates
COPY pdns/ /etc/pdns/
EXPOSE 5353/udp
EXPOSE 5353/tcp
# Inbuilt pdns webserver for prometheus metrics
EXPOSE 8082/tcp
##########
# Health checks
WORKDIR /app
ENTRYPOINT ["pdns_recursor"]
