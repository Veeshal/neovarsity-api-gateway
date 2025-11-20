FROM kong:3.6

# Copy configuration into image
COPY kong.yml /usr/local/kong/declarative/kong.yml

ENV KONG_DATABASE=off \
    KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml \
    KONG_PROXY_LISTEN=0.0.0.0:8000 \
    KONG_ADMIN_LISTEN=off

EXPOSE 8000

CMD ["kong", "start"]

