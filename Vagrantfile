DOCKER_URL = "192.168.50.4"
DOCKER_PORT = 5422
# export DOCKER_HOST="192.168.50.4:5422"

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: DOCKER_URL
  config.vm.provision :docker do |d|
    d.pull_images "base"
  end
  config.vm.provision :shell, :inline => <<-PREPARE
sudo sed -i -e 's/DOCKER_OPTS=/DOCKER_OPTS=\"-H 0.0.0.0:#{DOCKER_PORT}\"/g' /etc/init/docker.conf
sudo service docker stop
sudo service docker start
PREPARE
end
