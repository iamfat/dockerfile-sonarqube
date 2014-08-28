Docker Hub: iamfat/sonarqube
===========

## SonarQube Server
```bash
docker run --name sonarqube -v /dev/log:/dev/log --link mysql:mysql -p 9000:9000 -d iamfat/sonarqube
```
