#!/bin/sh

exec java -Dfile.encoding=UTF-8 \
    -SECURITY_ENABLELOGIN=true \
    -DISABLE_ADDITIONAL_FEATURES=false \
    -jar /app.jar
