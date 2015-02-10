# Hello Docker

![Docker Icon](https://d3oypxn00j2a10.cloudfront.net/0.14.4/img/homepage/docker-whale-home-logo-@2x.png?040e4659ee4b)

1. What is Docker
1. Install It on Your Mac
1. Build the first container
1. [baseimage-docker](https://github.com/phusion/baseimage-docker) and [passenger-docker](https://github.com/phusion/passenger-docker)
1. Docker remote API
1. [Single Server of Dockers](https://github.com/daiweilu/ssd) (a NPM package developed by me)

## What is Docker

> Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications. Bla Bla Bla...

For me, Docker is a light weight "VM" solution for Linux. You can run applications with reasonable level of isolation and maximum level of performance to a degree that you don't have to care about those anymore.

// Get a Image

## Install It on Your Mac

https://docs.docker.com/installation/mac/

Dependency: VirtualBox

```shell
boot2docker up
$(boot2docker shellinit)
docker version
```

To confirm, should see something like:

```
Client version: 1.3.2
Client API version: 1.15
Go version (client): go1.3.3
Git commit (client): 39fa2fa
OS/Arch (client): darwin/amd64
Server version: 1.4.0
Server API version: 1.16
Go version (server): go1.3.3
Git commit (server): 4595d4f
```

GUI Managing Tool for Mac: https://kitematic.com/

## Build the first container

```
docker pull node
docker run -it --rm node bash
```

`Demo1`

```
docker build -t test1 .
docker run -d -P test1
open http://$(boot2docker ip):<port>
```

## [baseimage-docker](https://github.com/phusion/baseimage-docker) and [passenger-docker](https://github.com/phusion/passenger-docker)

They claim to be clean and minimum (best for OCD patients).

```
docker build -t test2 .
docker run -d -P test2
open http://$(boot2docker ip):<port>
```

## Docker remote API

// TODO

## [Single Server of Dockers](https://github.com/daiweilu/ssd)

// TODO
