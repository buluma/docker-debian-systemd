FROM debian:bookworm

LABEL maintainer="Michael Buluma <me@buluma.me.ke>"
LABEL build_date="2023-11-20"

ENV container docker
ENV DEBIAN_FRONTEND noninteractive

ENV pip_packages "ansible>=2.8.0 cryptography"

# Enable systemd.
RUN apt-get update ; \
    apt-get install -y sudo systemd systemd-sysv python3 python3-pip python3-dev python3-setuptools python3-wheel python3-apt; \
    apt-get clean ; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
    rm -rf /etc/systemd/system/*.wants/* ; \
    rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
    rm -rf /lib/systemd/system/systemd-update-utmp*

# Upgrade pip to latest version.
RUN pip3 install --upgrade pip

# Install Ansible via pip.
RUN pip3 install $pip_packages

# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/lib/systemd/systemd"]
