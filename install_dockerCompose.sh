sudo curl -L https://github.com/docker/compose/releases/download/2.34.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
echo 'Installed Docker Compose Now Giving Root Permisions'

sudo chmod +x /usr/local/bin/docker-compose

docker compose version
