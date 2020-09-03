# install docker
#apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt install apt-transport-https ca-certificates curl software-properties-common
apt remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

apt-get update
apt -y install docker-ce docker-ce-cli containerd.io
#apt-get install -y docker-engine
systemctl enable docker
systemctl start docker
usermod -aG docker root

echo 'Dockers Has been Installed'
