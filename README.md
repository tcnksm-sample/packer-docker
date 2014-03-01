# Build Docker image by [Packer](http://www.packer.io/)

[You can build Docker images without Dockerfile](http://www.packer.io/docs/builders/docker.html#toc_4).

## How to build

Run docker 

```
$ vagrant up
```

This will install docker and packer in vagrant box.

```
$ vagrant ssh
```

### Chef

Build docker image with chef provisioning

```
$ packer build machine_chef.json
```

Check it.

```bash
$ docker run -t -i tcnksm/packer-chef:0.1 bash
```

### Puppet

Build docker image with puppet provisioning

```
$ packer build machine_puppet.json
```

Check it.

```bash
$ docker run -t -i tcnksm/packer-puppet:0.1 bash
```

### Ansible

Build docker image with ansible provisioning

```
$ packer build machine_ansible.json
```

Check it.

```bash
$ docker run -i -t tcnksm/packer-ansible:0.1 bash
```

