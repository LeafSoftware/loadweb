FROM ubuntu:latest
RUN apt-get update && apt-get install -y supervisor stress nginx
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY default /etc/nginx/sites-available/default
CMD ["/usr/bin/supervisord"]
