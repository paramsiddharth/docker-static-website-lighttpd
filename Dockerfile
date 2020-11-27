# Tiny Linux OS image
FROM alpine@sha256:c0e9560cda118f9ec63ddefb4a173a2b2a0347082d7dff7dc14272e7841a5b5a

# Copy files to container
WORKDIR /app
ADD . /app

# Install minimal dependencies for web server
RUN apk add lighttpd
EXPOSE 80

# Launch the server
CMD ["lighttpd", "-D", "-f", "server.conf"]