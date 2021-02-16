# https://certbot-dns-cloudflare.readthedocs.io/en/stable/

# sudo snap install --classic certbot
# sudo ln -s /snap/bin/certbot /usr/bin/certbot
# sudo snap set certbot trust-plugin-with-root=ok
# sudo snap install --beta certbot-dns-cloudflare
# sudo snap connect certbot:plugin certbot-dns-cloudflare

sudo certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini \
  --dns-cloudflare-propagation-seconds 60 \
  -d "*.ivan.build"
