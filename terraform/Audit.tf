module "Audit" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+audit@trivelta.com"
  AccountName                = "Audit"
  ManagedOrganizationalUnit = "Security"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Audit"
  SSOUserLastName            = "Account"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Security Account"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
