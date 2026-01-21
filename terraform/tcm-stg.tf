module "tcm-stg" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+tcm-stg@trivelta.com"
  AccountName                = "tcm-stg"
  ManagedOrganizationalUnit = "Stg"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Trivelta"
  SSOUserLastName            = "Client Mgt"
}

account_tags = {
  env     = "stg"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "staging account for TCM"
}

custom_fields = {
  group = "stg"
}

account_customizations_name = "sandbox"
}
