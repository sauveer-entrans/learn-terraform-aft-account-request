module "testbox" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+testbox@trivelta.com"
  AccountName                = "testbox"
  ManagedOrganizationalUnit = "Dev"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Test"
  SSOUserLastName            = "Box"
}

account_tags = {
  env     = "dev"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Create a new Dev AWS Account"
}

custom_fields = {
  group = "dev"
}

account_customizations_name = "sandbox"
}
