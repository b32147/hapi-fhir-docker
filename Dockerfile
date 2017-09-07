FROM jetty:9-jre8-alpine

# Install maven for the build and curl for healthchecks
RUN apk --no-cache add curl maven

# Prepare the build directory and files
RUN mkdir /hapi-fhir
ADD ./settings.xml /hapi-fhir/settings.xml
ADD ./pom.xml /hapi-fhir/pom.xml
ADD ./src /hapi-fhir/src

# Build the server and move it
RUN cd /hapi-fhir && \
  mvn package -s /hapi-fhir/settings.xml && \
  mv /hapi-fhir/target/hapi-fhir-jpaserver-example.war /var/lib/jetty/webapps/root.war && \
  rm -rf /hapi-fhir

USER jetty:jetty

EXPOSE 8080