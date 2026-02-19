#!/bin/sh

# Get the ingress path from Home Assistant
if [ -n "$INGRESS_ENTRY" ]; then
    export SYSTEM_ROOTURIPATH="$INGRESS_ENTRY"
else
    export SYSTEM_ROOTURIPATH=/
fi

# Configure for Home Assistant ingress
#export SECURITY_CSRFDISABLED=false
export CORS_ALLOWEDORIGINS=https://home.kononchuk.me

exec java -Dfile.encoding=UTF-8 -jar /app.jar
