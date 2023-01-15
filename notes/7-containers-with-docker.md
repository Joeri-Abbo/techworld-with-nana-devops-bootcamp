## 7 - Containers with Docker

### What is a container?

A container is a isolated environment that runs a process.
It is a process that is isolated from the host system.
It is a process that has its own file system, its own network stack and its own process tree.
This makes it very easy to run multiple processes on the same machine.
This is efficient because you can run multiple processes on the same machine.
A container is layers on top of the base image.
The layers contain runned commands or updates to the base image.
You can also install packages inside a container with a dockerFile.
A dockerFile is a file that contains a list of commands that are run inside a container.
A Container is easy to create and easy to destroy.
This means it is more scalable.
A container makes it easy to tag a image and that means you application.
You can run multiple containers on a host machine.

### Virtual Machines vs Containers

A Virtual Machine is a full operating system that runs on top of the host system.
This makes it use more resources than a container.
This is because a virtual machine has its own kernel.

### Docker architecture

- Docker Engine
    - Docker Server
    - Container Runtime
    - Volumes
    - Network
    - build img
    - Docker API
    - Docker CLI

### Useful docker commands

* docker images -> list all images available
* docker pull <IMAGE> -> fetch image
* docker run <IMAGE> -> creates and start container in attached mode (pulls and starts container)
* docker run -d <IMAGE> -> start container in detached mode
* docker stop <CONTAINER_ID>
* docker start <CONTAINER_ID>
* docker ps -> list running containers
* docker ps -a -> list bith running and stopped containters
* docker run -p<HOST_PORT>:<CONTAINER_PORT> <IMAGE> (You can bind ports with -p or -e for a environment variable)
* docker run --name <NAME> <IMAGE> (You can name containers with --name)
* docker logs <CONTAINER_ID>(Show log)
* docker logs <CONTAINER_NAME> (Show log)
* docker logs <CONTAINER_NAME> | tail (only show last logs)
* docker logs <CONTAINER_NAME> -f (stream logs)
* docker exec -it <CONTAINER_ID> sh (Enter container with terminal)
* docker exec -u 0 -it <CONTAINER_ID> sh (Add -u 0 to enter container as root user)
* docker network ls (check existing networks)
* docker network create <NAME> (create new network)
* docker build -t <IMG_NAME>:<VERSION_TAG> . (build image)
* docker rm <CONTAINER_ID> (Delete container)
* docker rmi <IMAGE_ID> (Delete image)

### Docker Network

Creates isolated Docker Network where containers are running inside.
The containers can communicate with each other over the network.
You can use its name to communicate with other containers.

### Docker Compose

Run multiple Docker containers with one command.
Create in combination with docker swarm with docker swarm you can use docker compose up and services to run multiple
containers.

* docker-compose -f <FILE_NAME> up
* docker-compose -f <FILE_NAME> down

### Storage

If you kill a container without a volume all data inside the container will be lost.
You can use volumes to store data outside the container.

### Dockerfile example

```dockerfile
Dockerfile -> blueprint for building images
FROM (image based on)
ENV
RUN (executes linux cmd in container)
COPY (runs on host)
CMD (entry point cmd, so only one)
```

### Docker repositories

There are a lot of ways to host your docker images.
You can use docker hub, Nexus, gitlab, github, AWS ECR, etc.
For private repositories you can use a private registry.
For a private registry you need to login with docker login.

### Best practices:

- Use official Docker images as Base image
- Fixate the version to avoid breaking app
- Only add as much as you need to the image and start with the smallest image
- Use .dockerignore to exclude files and folders
- Do not use root user
- scan your images for vulnerabilities with docker scan <IMAGE>


