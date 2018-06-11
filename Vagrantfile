# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |domain|
    domain.management_network_address = "10.255.1.0/24"
    domain.management_network_name = "wbr1"
    domain.nic_adapter_count = 130
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./helper_scripts/empty_playbook.yml"
  end

  config.vm.define "avi-controller" do |device|
    device.vm.box = "centos/7"
    device.vm.box_version = "1803.01"

    device.vm.provider :libvirt do |v|
      v.memory = 13312
      v.cpus = 4
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true
#  config.vm.provision "file", source: "~/avi-images/avi_source_tar/docker_install-17.2.11-9014.tar.gz" , destination: "./docker_install-17.2.11-9014.tar.gz"
  config.vm.provision :shell, path: "bootstrap.sh"
end

  config.vm.define "avi-se-1" do |device|
    device.vm.box = "centos/7"
    device.vm.box_version = "1803.01"

    device.vm.provider :libvirt do |v|
      v.memory = 8191
      v.cpus = 2
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.provision :shell, path: "bootstrap.sh"
end

  config.vm.define "avi-se-2" do |device|
    device.vm.box = "centos/7"
    device.vm.box_version = "1803.01"

    device.vm.provider :libvirt do |v|
      v.memory = 8191
      v.cpus = 2
    end
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.provision :shell, path: "bootstrap.sh"
end

end
