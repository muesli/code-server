# code-server

My code-server Docker image: a vanilla [codercom/code-server](https://hub.docker.com/r/codercom/code-server)
image that comes with a few additional base packages, the latest Go, and
pre-installed code-server extensions.

## Building

```bash
docker build -t code-server .
```

## Running

### Plain

```bash
docker run -it --rm \
    -p 127.0.0.1:8080:8080 \
    -e "PASSWORD=password" \
    -v `pwd`/home:/home/coder \
    code-server
```

### docker-compose

```yaml
version: "2"

services:
  codeserver:
    image: code-server
    restart: unless-stopped
    volumes:
      - ./home:/home/coder
    environment:
      - PASSWORD=password
```

## Using

Go to http://localhost:8080.
