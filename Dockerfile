FROM tomcat:7.0.93-jre8
MAINTAINER suneel 
RUN apt-get update
ADD https://kiranjavawar.s3.amazonaws.com/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
