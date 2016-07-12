# -*- mode: ruby -*-
# vi: set ft=ruby :



# sudo mv bintray-jfrog-artifactory-rpms.repo /etc/yum.repos.d/
# yum install jfrog-artifactory
Vagrant.configure(2) do |config|
  config.vm.box = "pozgo/centos7"
  config.vm.network "forwarded_port", guest: 8081, host: 8081
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "shell", path: "oss.sh"

end
