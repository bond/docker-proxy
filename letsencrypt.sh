#Use together with letsencrypt! Just make sure the .well-known folder exists in webroot/volume or letsencrypt will fail!

docker run -it --rm \
-v letsencrypt:/etc/letsencrypt \
-v sys_certs_html:/data/letsencrypt \
certbot/certbot \
certonly --webroot \
--register-unsafely-without-email --agree-tos \
--webroot-path=/data/letsencrypt \
-d test.domain.no


docker run -it --rm -v letsencrypt:/etc/letsencrypt -v sys_certs_html:/data/letsencrypt certbot/certbot renew --webroot-path=/data/letsencrypt --quiet 