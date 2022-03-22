# -*- mode: ruby -*-
# vi: set ft=ruby :

#test

Vagrant.configure("2") do |config|

   # dbserver
   config.vm.define "dbserver" do |dbserver|
     dbserver.vm.hostname = "dbserver"
     dbserver.vm.box = "ubuntu/xenial64"
     
     # Network Configs
     dbserver.vm.network "private_network", ip: "192.168.10.5"
 
     # VM Configs
     dbserver.vm.provider "virtualbox" do |vb|
       vb.gui = false
       vb.name = "LB-dbserver"
 
       # VM Specs
       vb.memory = "2048"
       vb.cpus = "2"
     end
 
     # Provision Script
     dbserver.vm.provision "shell", path: "setup/db-deployment.sh"
   end
 
 
   # apache VM
   config.vm.define "apacheserver" do |apache|
     apache.vm.hostname = "apacheserver"
     apache.vm.box = "generic/ubuntu1804"
 
     # Network Configs
     apache.vm.network "private_network", ip: "192.168.10.10"
 
     # VM Configs
     apache.vm.provider "virtualbox" do |vb|
       vb.gui = false
       vb.name = "LB-apache"
       
       # VM Specs
       vb.memory = "4096"
       vb.cpus = "4"
       vb.customize ["modifyvm", :id, "--vram", "128"]
     end
 
     # Provision Script
     apache.vm.provision "shell", path: "setup/apache-deployment.sh"
   end
 
 end
