# yii2-app-docker
Experemental dockerized yii2-app-advanced.
On board:
* Apache2
* PHP5
* Mysql server
* Redis server

## Start up
```sh
$ composer install --prefer-dist
$ ./yii init
```
## Build
```sh
$ docker-compose build
```
## Run
```sh
$ docker-compose up -d
```
## Stop
```sh
$ docker-compose stop
```
## Lists containers
```sh
$ docker-compose ps
```
## Go to console
```sh
$ docker exec -it yii2appdocker_web_1 bash
```
## Run tests inside
```sh
$ ./test/codeception/bin/yii migrate
$ codecept build
$ codecept run
```
