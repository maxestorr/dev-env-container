#!/bin/bash
container_name="nvim-machine"
docker build . -f Dockerfile -t $container_name