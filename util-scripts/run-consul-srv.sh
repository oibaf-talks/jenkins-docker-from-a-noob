docker run --rm -d --net=host -p=53:8600 -v /consul-srv-config/consul:/consul/config consul agent -server -ui -config-dir=/consul/config -dev -bind=192.168.0.107
