#!/usr/bin/env zsh
# install dropbox_uploader
sudo curl "https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh" -o /usr/local/bin/dropbox_uploader.sh
sudo chmod a+x /usr/local/bin/dropbox_uploader.sh
# install stack
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442
echo 'deb http://download.fpcomplete.com/ubuntu trusty main'|sudo tee /etc/apt/sources.list.d/fpco.list
sudo apt-get update && sudo apt-get install stack -yy -qq
# install docker
sudo apt-get install apt-transport-https ca-certificates -yy -qq
sudo apt-get install linux-image-extra-$(uname -r) -yy -qq
sudo apt-get install apparmor -yy -qq
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main'|sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update && sudo apt-get install docker-engine -yy -qq
rehash
