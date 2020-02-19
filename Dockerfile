FROM tomcat:8.5.51-jdk8-openjdk
MAINTAINER suneel 
RUN apt-get update
ADD https://kiranjavawar.s3.amazonaws.com/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
