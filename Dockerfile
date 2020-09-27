FROM tomcat:7.0.93-jre8
MAINTAINER suneel 
RUN apt-get update
ADD https://mahalogindeploy.s3-us-west-1.amazonaws.com/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
