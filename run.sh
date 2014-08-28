#!/bin/sh

echo "DBUSER=$DBUSER, DBPASS=$DBPASS"

sed -i "s/^sonar.jdbc.username=sonar/sonar.jdbc.username=$DBUSER/g" \
    /usr/local/share/sonarqube/conf/sonar.properties && \
sed -i "s/^sonar.jdbc.password=sonar/sonar.jdbc.password=$DBPASS/g" \
    /usr/local/share/sonarqube/conf/sonar.properties

echo "SET GLOBAL binlog_format = 'MIXED';" | mysql -u $DBUSER -p$DBPASS -h mysql

/usr/local/share/sonarqube/bin/linux-x86-64/sonar.sh console