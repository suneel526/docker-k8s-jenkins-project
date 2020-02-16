FROM tomcat:7.0.100-jdk8-openjdk
MAINTAINER suneel 
RUN apt-get update && apt-get install git -y
ADD https://kiranjavawar.s3.amazonaws.com/mahaLogin-1.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
