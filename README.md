Docker Hub: iamfat/sonarqube
===========

## SonarQube Server
```bash
docker run --name sonarqube -v /dev/log:/dev/log --link mysql:mysql -p 9000:9000 -d iamfat/sonarqube

docker run --name sonarqube -v /dev/log:/dev/log --privileged \
    -e "DBHOST=172.17.42.1" \
    -p 9000:9000 -d iamfat/sonarqube

```

## Available environmental variables
DBHOST, DBPORT, DBUSER, DBPASS