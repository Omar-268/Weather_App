

Vagrant.configure("2") do |config|
  # Global VMware configuration
  config.vm.provider "vmware_desktop" do |v|
    v.gui = false                # Run in headless mode
    v.memory = 512               # 512MB RAM (minimum for most Linux OS)
    v.cpus = 1                   # 1 CPU core
  end

  # Base box (VMware-compatible lightweight OS)
  config.vm.box = "generic/ubuntu1804"  # Replace with your preferred OS
  config.vm.box_check_update = false

  ### VM 1 Configuration ###
  config.vm.define "vm1" do |vm1|
    vm1.vm.hostname = "vm1"
    # Bridged networking - uses your host's physical network
    vm1.vm.network "public_network",
      bridge: "ens160",           # <--- Change to your host's interface
      ip: "192.168.1.93"        # <--- Use your subnet (same as host)
  end

  ### VM 2 Configuration ###
  config.vm.define "vm2" do |vm2|
    vm2.vm.hostname = "vm2"
    vm2.vm.network "public_network",
      bridge: "ens160",
      ip: "192.168.1.94"        # Sequential IP in same subnet
  end
end