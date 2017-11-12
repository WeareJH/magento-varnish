FROM alpine:edge
MAINTAINER Michael Woodward <michael@wearejh.com>

RUN apk add --no-cache varnish

COPY default.vcl /etc/varnish/default.vcl

EXPOSE 80
CMD ["varnishd", "-a", ":80", "-F", "-f", "/etc/varnish/default.vcl"]
