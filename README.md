Docker Debian Systemd
=====================

This Dockerfile can build containers capable to use systemd.

[![Docker Pulls](https://img.shields.io/docker/pulls/buluma/debian-systemd)](https://github.com/buluma/docker-debian-systemd)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch |Debian Version|Docker image tag|
|-------|--------------|----------------|
| master | current "stable" release (11) | bullseye,latest |
| buster | current "oldstable" release (10) | buster |
| bookworm | next release | bookworm |

Quick reference (cont.)
-------------
Where to file issues: https://github.com/buluma/debian-systemd/issues

Supported architectures: (more info) amd64, arm64

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
  buluma/debian-systemd:latest
```
