#!/bin/sh

# Configure for Home Assistant ingress using Stirling PDF environment variables
export SYSTEM_ROOTURIPATH="${INGRESS_ENTRY:-/}"

exec java -Dfile.encoding=UTF-8 -jar /app.jar
