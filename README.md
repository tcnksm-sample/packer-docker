# Build docker image by Packer on OSX

This is not worked because of [this](https://github.com/mitchellh/packer/issues/901).

## How to build

Run docker 

```
$ vagrant up
$ export export DOCKER_HOST="192.168.50.4:5422"
```

Login Docker.io to push image

```
$ docker login
```

Create sample cookbook (This time apache)

```
$ knife cookbook create apache -o site-cookbook
```

Build docker image with chef provisioning

```
$ packer build machine.json
```
