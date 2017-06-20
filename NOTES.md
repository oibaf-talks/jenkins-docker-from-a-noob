Usar jenkins-data que tenho
Configurar uma cloud adicional em vm CoreOS
--- CoreOS
https://coreos.com/os/docs/latest/customizing-docker.html#enable-the-remote-api-on-a-new-socket
https://coreos.com/os/docs/latest/customizing-docker.html#use-an-http-proxy
--- Jenkins Image
https://hub.docker.com/_/jenkins/

docker run -p 8080:8080 -p 50000:50000 -v $PWD/jenkins-docker:/var/jenkins_home jenkins
--- Maven
Maven e proxies: https://maven.apache.org/settings.html#Proxies
--- Enable Docker TCP Socket
https://gist.githubusercontent.com/tramasoli/64122caaca26e1520551eb57b00d7ed5/raw/8cf6546a2cb43b699ac67897c0ef4661a3a783e2/docker-tcp.socket
--- Configure boot2docker
https://coderwall.com/p/siqnjg/disable-tls-on-boot2docker

sudo vi /var/lib/boot2docker/profile 
DOCKER_TLS=no
export HTTP_PROXY=http://172.17.0.1:3128
export HTTPS_PROXY=http://172.17.0.1:3128

--- Run same tests as TravisCI
docker build -t `echo $PWD | awk -F '/' '{ print $6 }'`-test .
depois
docker run -d --rm --name test `echo $PWD | awk -F '/' '{ print $6 }'`-test && ./travis-test.sh test && docker stop test
