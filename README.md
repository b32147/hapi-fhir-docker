## Running hapi-fhir in a Docker container

Use this command to start the container: 
  `docker run -d --name hapi-fhir -e HAPI_FHIR_PORT={PORT} -p {PORT}:{PORT} b32147/hapi-fhir`

FHIR will default to using port 8080 if none is specified in the HAPI_FHIR_PORT argument.

Note: with this command data is persisted across container restarts, but not after removal of the container. Use a docker volume mapping on /var/lib/jetty/target to achieve this.
