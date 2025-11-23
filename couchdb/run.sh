#!/bin/bash
set -e

# Read options from Home Assistant options.json
if [ -f /opt/couchdb/data/options.json ]; then
    COUCHDB_USER=$(jq -r '.admin_user // "admin"' /opt/couchdb/data/options.json)
    COUCHDB_PASSWORD=$(jq -r '.admin_password // "changeme"' /opt/couchdb/data/options.json)
    echo "Starting CouchDB with user: ${COUCHDB_USER}"
else
    # Use default values (this typically only happens during build/test)
    COUCHDB_USER="admin"
    COUCHDB_PASSWORD="changeme"
fi

# Update admin credentials in local config
echo "Updating admin credentials..."
cat > /opt/couchdb/etc/local.d/docker.ini <<EOF
[admins]
${COUCHDB_USER} = ${COUCHDB_PASSWORD}
EOF

# Export for docker-entrypoint.sh
export COUCHDB_USER
export COUCHDB_PASSWORD

# Start CouchDB using the official entrypoint
exec /docker-entrypoint.sh /opt/couchdb/bin/couchdb
