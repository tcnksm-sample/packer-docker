Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :docker do |d|
    d.pull_images "linux/chef-solo"
  end
  config.vm.provision :shell, :inline => <<-PREPARE

apt-get -y update
apt-get install -y wget unzip curl

mkdir /home/vagrant/packer
cd /home/vagrant/packer
wget https://dl.bintray.com/mitchellh/packer/0.5.2_linux_amd64.zip
unzip 0.5.2_linux_amd64.zip
echo "export PATH=$PATH:/home/vagrant/packer" > /home/vagrant/.bashrc
PREPARE
  
end
