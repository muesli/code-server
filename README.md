# code-server

My code-server Docker image

## Building

```bash
docker build -t code-server .
```

## Running

### Plain

```bash
docker run -it --rm \
    -p 8080:8080 \
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
