# -*- mode: ruby -*-

# vi: set ft=ruby :

#Configuration der Box "web"
Vagrant.configure("2") do |config|

  config.vm.define "web" do |web|
     # Instllation einer Ubuntu Instance
     config.vm.box = "generic/ubuntu1804"
      # VM Specs
        config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = "2"

     end

     # Http und mysql weiterleitung Konfiguration 
      config.vm.network "forwarded_port", guest: 80, host: 8080
      config.vm.network "forwarded_port", guest: 3306, host: 8081
      web.vm.provision "shell", path: "setup/installation"

     end

  end