# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.network :hostonly, "33.33.33.10"
  # config.vm.network :bridged
  # config.vm.forward_port 80, 8080
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks","my_cookbooks"]
    chef.roles_path = "roles"
    chef.add_role "gitlabhq"
  end
  
  config.vm.customize [
    "modifyvm", :id,
    "--name", "gitlabhq",
    "--memory", "1024",
    "--cpus", "2"
  ]

end
