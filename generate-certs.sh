#!/usr/bin/env bash
set -e

CERT_DIR="certs"
DOMAIN="localhost"

mkdir -p "$CERT_DIR"

openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
  -keyout "$CERT_DIR/server.key" \
  -out "$CERT_DIR/server.crt" \
  -subj "/C=US/ST=Local/L=Local/O=Dev/CN=$DOMAIN" \
  -addext "subjectAltName=DNS:$DOMAIN,DNS:www.$DOMAIN,IP:127.0.0.1"

echo "✅ Certificates generated in $CERT_DIR/"
echo "   - $CERT_DIR/server.crt"
echo "   - $CERT_DIR/server.key"
