## Running hapi-fhir in a Docker container

Execute the `build-docker-image.sh` script to build the docker image. 

Use this command to start the container: 
  `docker run -d --name hapi-fhir -p 8080:8080 b32147/hapi-fhir-docker`

Note: with this command data is persisted across container restarts, but not after removal of the container. Use a docker volume mapping on /var/lib/jetty/target to achieve this.
