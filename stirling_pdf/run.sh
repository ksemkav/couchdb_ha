#!/bin/sh

# Configure for Home Assistant ingress
export SYSTEM_ROOTURIPATH=/
export SECURITY_CSRFDISABLED=false
export CORS_ALLOWEDORIGINS=https://home.kononchuk.me

exec java -Dfile.encoding=UTF-8 -jar /app.jar
