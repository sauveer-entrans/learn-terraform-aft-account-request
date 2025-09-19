module "TCM" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+tcm@trivelta.com"
  AccountName                = "TCM"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Trivelta"
  SSOUserLastName            = "Client Management"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Create the Production TCM AWS Account"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
