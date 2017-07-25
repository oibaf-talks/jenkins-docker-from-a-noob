 2203  docker run --rm --restart=unless-stopped -d --net=host consul consul agent -advertise=192.168.56.1 -join=192.168.56.101 -data-dir=/consul/data
 2204  docker run --restart=unless-stopped -d --net=host consul consul agent -advertise=192.168.56.1 -join=192.168.56.101 -data-dir=/consul/data
 2206  docker run -d --name=traefik --net=host --restart=unless-stopped -p 8081:8080 -p 80:80 traefik --web --docker
 2211  docker run -d --name=traefik -v /var/run/docker.sock:/var/run/docker.sock --net=host --restart=unless-stopped -p 8081:8080 -p 80:80 traefik --web --docker
 2214  docker run -d --name=traefik -v /var/run/docker.sock:/var/run/docker.sock --net=host --restart=unless-stopped -p 8081:8080 -p 80:80 traefik --web --docker
 2218  history | grep unless
 2219  history | grep unless > util-scripts/run-registrator.sh 
