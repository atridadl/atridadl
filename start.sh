#!/bin/bash
set -eu

# ensure that data directory is owned by 'cloudron' user
chown -R cloudron:cloudron /app/data

echo "==> Starting Server"
cd /app/code
ls
exec /usr/local/bin/gosu cloudron:cloudron node /app/code/server/index.mjs