# Create ubuntu container and install ansible
FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
RUN apt update && \
    apt install -y && \
    apt-add-repository ppa:ansible/ansible && \
    apt update && \
    apt install -y ansible && \
    apt clean autoclean && \
    apt autoremove -y
FROM base AS max

# Create max user
RUN addgroup --gid 1000 max
RUN adduser --gecos --uid 1000 --gid 1000 --disabled-password max
USER max
WORKDIR /home/max

# Copy ansible playbook
# Todo: add ansible playbook
#FROM max
#COPY . .
#CMD ['sh' '-c', 'ansible-playbook playbook.yml']
