# Nginx Docker App (HTTPS)

A static website served by Nginx in Docker over HTTPS with HTTP→HTTPS redirect.

## Quick Start

1. Generate a self-signed certificate:

   chmod +x generate-certs.sh
   ./generate-certs.sh

2. Start the container:

   docker compose up -d --build

3. Open https://localhost

Your browser will warn about the self-signed certificate — click "Advanced → Proceed".

## Production Notes

- Replace self-signed certs in `certs/` with real certificates (e.g., Let's Encrypt).
- Enable HSTS in `default.conf` once HTTPS is confirmed stable.
- Never commit `certs/`, `*.key`, or `*.crt` to GitHub.
