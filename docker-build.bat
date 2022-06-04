@REM Build docker image with DockerName
set container_name=nvim-machine
echo "Building docker image with name %container_name%"
docker build . -f Dockerfile -t %DockerName%