FROM debian:latest
MAINTAINER confirm IT solutions, dbarton

# Install Python development headers and PIP (PyPi) package manager via APT.
RUN apt-get update \
    && apt-get -y install python-dev python-pip \
    && apt-get clean

# Install latest Ansible via PIP.
RUN pip install ansible

# Create Ansible inventory.
RUN mkdir -p /etc/ansible \
    && echo localhost >/etc/ansible/hosts
