# Create ubuntu container and install ansible
FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes
FROM base AS max

# Create max user
RUN addgroup --gid 1000 max
RUN adduser --gecos max --uid 1000 --gid 1000 --disabled-password max
USER max
WORKDIR /home/max

# Copy ansible playbook
# Todo: add ansible playbook
#FROM max
#COPY . .
#CMD ['sh' '-c', 'ansible-playbook playbook.yml']
