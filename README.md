# sslscan-docker

This is a Dockerfile that builds [sslscan's](https://github.com/rbsec/sslscan/)
HEAD.

## Instructions

Build:

```
docker build -t sslscan .
```

Run:

```
docker run -t sslscan --help
```

```
docker run -t sslscan example.com
```

```
docker run -t sslscan --sni-name=example.com 127.0.0.1
```

Enjoy 🥂
