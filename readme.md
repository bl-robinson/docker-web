# Container for home webserver

Requires letsencrypt dir mounted at /etc/letsencrypt

/var/www/vhosts/default Should be mounted from a volume which is reserved for 'default' things like
grabs / anirec recordings

/var/www/vhosts/letsencrypt is for certbot... This may not be needed in practice depending on how I end up getting certbot working.

