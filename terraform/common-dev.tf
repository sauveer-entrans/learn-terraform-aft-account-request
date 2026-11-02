module "common-dev" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+common-dev@trivelta.com"
  AccountName                = "common-dev"
  ManagedOrganizationalUnit = "Dev"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Trivelta"
  SSOUserLastName            = "Platform"
}

account_tags = {
  env     = "dev"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Shared multi-tenant platform account (TCM, casino aggregator, social feed)"
}

custom_fields = {
  group = "dev"
}

account_customizations_name = "sandbox"
}
