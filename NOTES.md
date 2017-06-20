# Notas

- Usar jenkins-data que tenho
- Configurar uma cloud adicional em vm 'boot2docker'

## Presentation
- https://docs.google.com/presentation/d/12xFMt-NAnLw0hYS0dUx2wzl7nSRhAkIf-f4L41A4gy0/pub?start=false&loop=false&delayms=3000

## CoreOS / Docker com systemd
- https://coreos.com/os/docs/latest/customizing-docker.html#enable-the-remote-api-on-a-new-socket
- https://coreos.com/os/docs/latest/customizing-docker.html#use-an-http-proxy

## Jenkins Image
https://hub.docker.com/_/jenkins/
```shell
docker run -p 8080:8080 -p 50000:50000 -v $PWD/jenkins-docker:/var/jenkins_home jenkins
```

## Maven
- Maven e proxies: https://maven.apache.org/settings.html#Proxies

## Enable Docker TCP Socket (systemd)
- https://gist.githubusercontent.com/tramasoli/64122caaca26e1520551eb57b00d7ed5/raw/8cf6546a2cb43b699ac67897c0ef4661a3a783e2/docker-tcp.socket

## Configure boot2docker (no VirtualBox)

- 2 eth: NAT e HostInternal

https://coderwall.com/p/siqnjg/disable-tls-on-boot2docker
```shell
sudo vi /var/lib/boot2docker/profile 
# disables TLS for simplicity of testing
DOCKER_TLS=no
# in case you need proxy, setup:
#export HTTP_PROXY=http://192.168.56.1:3128
#export HTTPS_PROXY=http://192.168.56.1:3128
```
## Test images Docker Hub
- https://hub.docker.com/r/tramasoli/jenkins-docker-demo/tags/

## My base-images repo
- https://github.com/tramasoli-docker/base-images

## Run same tests as TravisCI
```shell
docker build -t `echo $PWD | awk -F '/' '{ print $6 }'`-test .
```

depois

```shell
docker run -d --rm --name test `echo $PWD | awk -F '/' '{ print $6 }'`-test && ./travis-test.sh test && docker stop test
```

## Push image to hub

- Add jenkins credentials
- Change docker_build job
- RUN THE THING
