module "rebet-germany-prd" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+rebetgermanyprd@trivelta.com"
  AccountName                = "rebet-germany-prd"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Chris"
  SSOUserLastName            = "McMahon"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Create a new Dev AWS Account"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
