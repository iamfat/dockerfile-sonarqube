Docker Hub: genee/sonarqube
===========

## SonarQube Server
```bash
docker run --name sonarqube -v /dev/log:/dev/log --link sonar-mysql:mysql -p 9000:9000 -d genee/sonarqube

docker run --name sonarqube -v /dev/log:/dev/log --privileged \
    -e "DBHOST=172.17.42.1" -e "DBPORT=3307" \
    -p 9000:9000 -d genee/sonarqube

```

## Available environmental variables
DBHOST, DBPORT, DBUSER, DBPASS