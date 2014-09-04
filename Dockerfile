FROM debian:7.6
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y procps curl unzip openjdk-7-jre-headless mysql-client

# Install SonarQube Server
RUN curl -sLo sonarqube-4.4.zip http://dist.sonar.codehaus.org/sonarqube-4.4.zip && \
    unzip sonarqube-4.4.zip -d /tmp && \
    mv /tmp/sonarqube-4.4 /usr/local/share/sonarqube

ENV DBHOST mysql
ENV DBPORT 3306
ENV DBUSER genee
ENV DBPASS 83719730

ADD start /start
CMD ["/start"]
