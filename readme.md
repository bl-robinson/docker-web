# Container for home webserver

Requires letsencrypt dir mounted at /etc/letsencrypt

/var/www/vhosts/default Should be mounted from a volume which is reserved for 'default' things like
grabs / anirec recordings

/var/www/vhosts/letsencrypt is for certbot... This is no longer needed and can probably go... As I used CertManager and project the certificate sercrets in with K8s.

# Build

make build

# Push

make push
