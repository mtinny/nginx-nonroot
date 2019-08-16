FROM nginx

RUN apt -y update && apt -y install wget curl dnsutils tcpdump iptables iproute2 iputils-ping vim
RUN sed -i -e 's/user  nginx;//g' /etc/nginx/nginx.conf  && \
    chown nginx /var/cache/nginx/ && \
    sed -i -e 's/listen *80;/listen 8080;/' /etc/nginx/conf.d/default.conf && \
    chmod 777 /var/run/
USER 101
