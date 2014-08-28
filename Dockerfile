FROM debian:7.6
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y curl unzip openjdk-7-jre-headless

# Install SonarQube Server
RUN curl -sLo sonarqube-4.4.zip http://dist.sonar.codehaus.org/sonarqube-4.4.zip && \
    unzip sonarqube-4.4.zip -d /tmp && \
    mv /tmp/sonarqube-4.4 /usr/local/share/sonarqube && \
    sed -i 's/^#sonar.jdbc.url=jdbc:mysql:\/\/\(.*\):3306/sonar.jdbc.url=jdbc:mysql:\/\/mysql:3306/g' \
        /usr/local/share/sonarqube/conf/sonar.properties

ENV DBUSER genee
ENV DBPASS 83719730

ADD run.sh /run.sh

CMD /run.sh