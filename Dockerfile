FROM alpine:edge
MAINTAINER Michael Woodward <michael@wearejh.com>

RUN apk add --no-cache varnish

COPY disabled.vcl enabled.vcl /etc/varnish/

EXPOSE 80
CMD ["varnishd", "-a", ":80", "-F", "-f", "/etc/varnish/enabled.vcl", "-f", "/etc/varnish/disabled.vcl"]
