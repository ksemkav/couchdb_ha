# See https://docs.stirlingpdf.com/#-docker-deployment
FROM stirlingtools/stirling-pdf:latest

COPY run.sh /run.sh
RUN chmod +x /run.sh

# Use Tini as the entrypoint to handle processes
ENTRYPOINT ["tini", "--"]

# Run Stirling-PDF through the copied run.sh script
CMD ["/run.sh"]
