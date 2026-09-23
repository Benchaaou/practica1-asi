Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box = "gyptazy/ubuntu22.04-arm64"
    web.vm.network "private_network", ip: "192.168.56.10"

    web.vm.provider "vmware_desktop" do |v|
      v.vmx["memsize"] = "2048"
      v.vmx["numvcpus"] = "1"
    end

    web.vm.provision "shell", path: "provisioning.sh"
  end

  config.vm.define "cliente" do |cliente|
    cliente.vm.box = "gyptazy/ubuntu22.04-arm64"
    cliente.vm.network "private_network", ip: "192.168.56.11"

    cliente.vm.provider "vmware_desktop"
  end
end