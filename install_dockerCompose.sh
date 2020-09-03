sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

echo 'Installed Docker Compose Now Giving Root Permisions'

sudo chmod +x /usr/local/bin/docker-compose

docker-compose -v
