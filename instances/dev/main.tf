locals {
  tags = {
    environment = var.instance
    source      = "kainosteaching_lab3"
    provisioner = "terraform"
    version     = var.release_version
    # App specific tags
    criticality = "Tier 2"
    OwnerName   = "ZSP"
    org         = "ZSP"
    application = "Lab_3"
  }

  service_prefix = "lab3-jjs"
  # service_prefix = "lab3-CHG ME!"
}

module "service" {
  source                   = "../../src"
  name                     = local.service_prefix
  instance                 = var.instance
  tags                     = local.tags
  account_tier             = "Premium"
  account_replication_type = "LRS"
}
