# Read Me First
The goal of this project is to understand and set up docker, Dockerfile, docker-compose and push an image to dockerhub.


* The original package name 'de.shevchuk.docker-image' is invalid and this project uses 'de.shevchuk.dockerimage' instead.

## Lingo -> understand basic terms
Docker helps to pack and run OS-level virtual containers, specifying all the 'add-ons' the software needs to properly run.
It enables the program to run exactly in the same conditions everywhere (locally, on different environments etc.)

* Container: OS-level virtualization of user space -> wraps the app and all its necessities (OS, app codee, libraries...). Containers share the host-system's kernel with others.

* Dockerfile : execution instructions to build an image. It specifies  the running directory, port and command to run in order to operate it etc.
* Image: read-only, executable template of the app + dependencies and processes to run once launched
* Registry (e.g Dockerhub): the repo holding the images (public/private) -> so that the client is able to push/pull any customized image. Aka appstore for images

* Client: UI to interact with , pull and runs the image
* Host: the server side that executes the client's commands, on the host


## Steps to dockerize a project

* Write a docker file specifying the folder, port, command where and how to build the image
* Start/run the image. If the image can't be found locally, docker will try to pull it from the configured registry (Dockerhub as default)
* Container is up and running


## Useful Docker-related commands

#### Images
mvn springboot:run  -> run project

java -jar ./target/docker-image-0.0.1-SNAPSHOT.jar  ->  java file to be executed in a target folder on the root

docker build -t imthedoggo/spring-java11:1  ->  build image by running the Dockerfile

docker login  ->  login to dockerhub
docker push imthedoggo/spring-java11  ->  push the latest image to the repository

docker run -p 8089:8080 -d imthedoggo/spring-java12  ->  run image, specifying the local port to run the project
//when unable to find the image locally, it'll try to pull image from the (existing) image on dockerhub 


### Containers
docker ps  ->  see all containers running 
docker stop dsf454hhy55u  ->  stop container 

docker images  ->  see all local images (IDs)
docker rmi 00ef62288c84  ->  remove image
docker rmi 00ef62288c84 --force  ->  force image deletion

### Reference Documentation
For further reference, please consider the following sections:

* [The Docker image generated for this project on dockerhub](https://hub.docker.com/repository/docker/imthedoggo/spring-java11)
* [Beginners intro to containers and Docker](https://www.freecodecamp.org/news/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)