# consul-learn
Learning Consul in Docker

## Build dev env:
```bash
$ make dev-env
# this will build a new docker image and run the container
# and current dir is mounted to /srv in the container
```
## Tear down:
```bash
$ make destroy
# will stop the running continer and delete the image
```
