module "betcorrect2-stg" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+betcorrect2stg@trivelta.com"
  AccountName                = "betcorrect2-stg"
  ManagedOrganizationalUnit = "Stg"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Ajay"
  SSOUserLastName            = "Ramnani"
}

account_tags = {
  env     = "stg"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Create a new Dev AWS Account"
}

custom_fields = {
  group = "stg"
}

account_customizations_name = "sandbox"
}
