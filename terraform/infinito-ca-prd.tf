module "infinito-ca-prd" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+infinito-ca-prd@trivelta.com"
  AccountName                = "infinito-ca-prd"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Infinito"
  SSOUserLastName            = "CA"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Non US Infinito Account"
}

custom_fields = {
  group = ""
}

account_customizations_name = "prod"
}
