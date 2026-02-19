#!/bin/sh

exec java -Dfile.encoding=UTF-8 \
    -DSECURITY_ENABLELOGIN=true \
    -DDISABLE_ADDITIONAL_FEATURES=false \
    -jar /app.jar
