#!/bin/bash
set -eu

# ensure that data directory is owned by 'cloudron' user
chown -R cloudron:cloudron /app/data

echo "==> Starting Server"
cd /app/code

exec /usr/local/bin/gosu cloudron:cloudron node /app/code/.output/server/index.mjs