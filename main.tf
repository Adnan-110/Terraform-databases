module "docdb"{
  source                = "./vendor/modules/docdb"
  ENV                   = var.ENV
  DOCDB_PORT            = var.DOCDB_PORT
}

# We cannot parameterize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is that it clones the remote code from the specified branch and make it locally available.