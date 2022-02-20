terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node" {
  count     = 3
  name      = format("rhel-vm-%02d",count.index+1)
  image     = "\\\\localhost\\D$\\UKC\\VM\\rhel-8-base.ova"
  cpus      = 1
  memory    = "2048 mib"
  network_adapter {
    type = "bridged"
	host_interface = "Intel(R) Ethernet Connection (2) I219-V"
  }
}

