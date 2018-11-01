FROM nginx
ADD proxy.conf /etc/nginx
ADD gzip.conf /etc/nginx/conf.d
ADD default.conf /etc/nginx/conf.d