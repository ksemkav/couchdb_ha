#!/bin/sh
export SECURITY_ENABLELOGIN=true
export DISABLE_ADDITIONAL_FEATURES=false

exec java -Dfile.encoding=UTF-8 -jar /app.jar
