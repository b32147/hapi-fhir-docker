FROM jetty:9-jre8-alpine
RUN apk --no-cache add curl  
USER jetty:jetty
ADD ./target/hapi-fhir-jpaserver-example.war /var/lib/jetty/webapps/root.war
EXPOSE 8080
