FROM alpine:3.7
LABEL maintainer="b00za@disroot.org"

RUN apk add --no-cache tor && \
    echo "SocksPort 0.0.0.0:9050" > /etc/tor/torrc && \
    echo "DataDirectory /var/lib/tor" >> /etc/tor/torrc

EXPOSE 9050

VOLUME ["/var/lib/tor"]

USER tor

CMD ["/usr/bin/tor"]

