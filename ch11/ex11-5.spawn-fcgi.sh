# Nginx + FastCGI

spawn-fcgi \
    -d /home/michael/sites/mysite \
    -s /tmp/mysite.socket \
    -n \
    -M 511 \
    -u michael \
    -- /home/michael/sites/mysite/dist/build/mysite-fastcgi/mysite-fastcgi