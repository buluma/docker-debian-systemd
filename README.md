Docker Debian Systemd
=====================

This Dockerfile can build containers capable to use systemd.

[![debian build status](https://img.shields.io/docker/cloud/build/buluma/docker-debian-systemd.svg)](https://hub.docker.com/repository/docker/buluma/docker-debian-systemd)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch  |Debian Version    |Docker image tag|
|--------|------------------|----------------|
|master  |latest (buster/10)|latest          |
|bullseye|bullseye          |bullseye        |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  buluma/debian-systemd:bullseye
```