FROM couchdb:3.5.1

# Install jq for JSON parsing
USER root
RUN apt-get update && apt-get install -y --no-install-recommends jq \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy configuration and startup script
COPY local.ini /opt/couchdb/etc/local.ini
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Set tini to suppress zombie reaping warning
ENV TINI_SUBREAPER=1

CMD ["/run.sh"]
