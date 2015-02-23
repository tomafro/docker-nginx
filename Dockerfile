FROM gliderlabs/alpine:3.1

MAINTAINER Tom Ward (tom@popdog.net)

RUN apk add --update nginx && mkdir -p /tmp/nginx/client-body

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
