FROM alpine:edge
LABEL maintainer="b00za@pm.me"

RUN apk add --no-cache tor && \
    echo "SocksPort 0.0.0.0:9050" > /etc/tor/torrc && \
    echo "DataDirectory /var/lib/tor" >> /etc/tor/torrc

EXPOSE 9050

VOLUME ["/var/lib/tor"]

USER tor

ENTRYPOINT ["/usr/bin/tor"]

