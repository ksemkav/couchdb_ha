#!/bin/sh

# Get the ingress path from Home Assistant
CONTEXT_PATH="${INGRESS_ENTRY:-/}"

# Start Stirling PDF with proper Spring Boot configuration for ingress
exec java -Dfile.encoding=UTF-8 \
    -Dserver.servlet.context-path="$CONTEXT_PATH" \
    -Dserver.forward-headers-strategy=framework \
    -Dserver.use-forward-headers=true \
    -jar /app.jar
