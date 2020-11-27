# Docker Static Website
A simple static website running within a Docker container.

## Behind the Scenes
- It runs on top of a minimal Alpine Linux container.
- It uses `lighttpd` to serve the content.
- The website uses Bootstrap for styling.

## Building
Use `Dockerfile` to build an image.
``` bash
docker build -t static_website .
```

## Execution
The server runs at port 80 within the container, so remember to forward it to the desired port.
``` bash
docker run --rm -ti -p 3000:80 static_website
```
The website will be live at http://localhost:3000.

# Made with ❤ by Param.