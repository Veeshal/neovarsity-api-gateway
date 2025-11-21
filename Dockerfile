# Use official KrakenD CE image
FROM devopsfaith/krakend:2.6

# Copy your KrakenD configuration file into the container
COPY krakend.json /etc/krakend/krakend.json

# Expose KrakenD port (Render reads this)
EXPOSE 8080

# Run KrakenD with your config
CMD ["run", "-c", "/etc/krakend/krakend.json"]
