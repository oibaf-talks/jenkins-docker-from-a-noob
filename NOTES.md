Usar jenkins-data que tenho
Configurar uma cloud adicional em vm CoreOS
---
https://coreos.com/os/docs/latest/customizing-docker.html#enable-the-remote-api-on-a-new-socket
https://coreos.com/os/docs/latest/customizing-docker.html#use-an-http-proxy
---
https://hub.docker.com/_/jenkins/
---
docker run -p 8080:8080 -p 50000:50000 -v /your/home:/var/jenkins_home jenkins
---
Maven e proxies: https://maven.apache.org/settings.html#Proxies
---
https://gist.githubusercontent.com/tramasoli/64122caaca26e1520551eb57b00d7ed5/raw/8cf6546a2cb43b699ac67897c0ef4661a3a783e2/docker-tcp.socket
---
https://coderwall.com/p/siqnjg/disable-tls-on-boot2docker
---
docker build -t `echo $PWD | awk -F '/' '{ print $6 }'`-test .
depois
docker run -d --rm --name test `echo $PWD | awk -F '/' '{ print $6 }'`-test && ./travis-test.sh test && docker stop test
