FROM alpine:3.22.1
WORKDIR /app
COPY . .
RUN chmod +x /app/script.sh
STOPSIGNAL SIGTERM
CMD ["/bin/sh", "/app/script.sh"]
