FROM alpine:latest

MAINTAINER alex <komlik.al@gmail.com> 

RUN mkdir -p /run/nginx && apk --update add nginx

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
