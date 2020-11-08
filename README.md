# Docker-sync Symfony boilerplate
 
This is a boilerplate for [docker-sync](https://docker-sync.readthedocs.io/en/latest/) and [docker](https://www.docker.com/) to get your [Symfony](https://symfony.com/) project up and running.

## Stack

- PHP 7.3.12
- Apache
- MySQL (latest)
- phpMyAdmin

## Getting Started

1) Install
    - docker : https://docs.docker.com/compose/install/#install-compose
    - docker-sync : `gem install docker-sync`

2) Get the boilerplate

```
git clone https://github.com/PIERRONMarc/docker-sync-symfony-boilerplate.git
cd docker-sync-symfony-boilerplate
```

3) Use it as a starting point for your configuration or copy these files into your existing Symfony project

```
cp {Dockerfile,Makefile,docker-compose.yml,docker-sync.yml} your-project-path
```

4) Set the project name in the .env file

``` 
###> docker-compose ###
COMPOSE_PROJECT_NAME=nameYourApp
###< docker-compose ###
```

5) Start docker and docker-sync

```
make server-start
```

## Using

Use the `Makefile` to make your life easier or do it all manually.

### `make server-start` or `make server-stop`  
Start or stop the synchronisation and containers of the project. 

```
docker-sync start
docker-compose up -d

docker-compose stop
@docker-sync stop
```

### `make purge`  
Purge all conainers and associated volumes.

```
docker-sync stop
docker-sync-stack clean
```



