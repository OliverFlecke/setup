# Docker

This document contains different useful commands for Docker.

## See where space is used

`docker system df`

## Cleaning up images

Remove all stopped images

```sh
docker rm $(docker ps --filter status=exited -q)
```

Remove all dangling images

```sh
docker rmi $(docker images -f dangling=true -q)
```

