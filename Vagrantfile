# -*- mode: ruby -*-

# vi: set ft=ruby :

#Configuration der Box "WEB"
Vagrant.configure("2") do |config|

  config.vm.define "web" do |web|
     # Eine Ubuntu Instance Installieren
     config.vm.box = "generic/ubuntu1804"
      # Der VM 1024 Mb RAM
        config.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"

     end

     # Konfiguration der weiterleitung von Http und mysql
      config.vm.network "forwarded_port", guest: 80, host: 8080
      config.vm.network "forwarded_port", guest: 3306, host: 8081
      web.vm.provision "shell", path: "setup/installation"

     end

  end