```bash
mkdir ./dbsql
docker run --name learn-mysql --rm -v ./dbsql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin -e MYSQL_DATABASE=sqlsql -p 3306:3306 -it mysql:8.4

docker exec -it learn-mysql bash

```

-> ok

## Connect to mysql in docker

```bash
mysql -u root -p
OR
mysql -uroot [password] -h127.0.0.1 -P3308
```

## Manual connect to another container

```bash
dcls
dc inspect [container]
-> IPAddress

# Usage with arbitrary server
# https://hub.docker.com/_/phpmyadmin
docker run -d -e PMA_ARBITRARY=1 -p 8080:80 phpmyadmin:5.2
-> bugs ko connet được
```

## Intro mySQL

https://www.w3schools.com/mysql/mysql_datatypes.asp

```sql
drop database if exist insta;
create database insta;
use insta;
```
