# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
    vb.cpus = "2"
    vb.customize [
      "modifyvm", :id,
      "--vram", "256",
      "--hwvirtex", "on",
      "--paravirtprovider", "kvm",
      "--nestedpaging", "on",
      "--largepages", "on",
      "--vtxvpid", "on",
      "--vtxux", "on"
    ]
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get upgrade
    apt-get install -y libgtk-3-dev ubuntu-desktop
  SHELL
end
