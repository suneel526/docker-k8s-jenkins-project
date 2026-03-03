FROM tomcat:10.1-jdk17-temurin

LABEL maintainer="suneel" \
      description="Tomcat sample deployment"

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy local WAR file (reproducible build)
ADD https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
