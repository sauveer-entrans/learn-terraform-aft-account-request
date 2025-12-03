module "pro-serve-do_not_touch-dev" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+proservedonottouchdev@trivelta.com"
  AccountName                = "pro-serve-do_not_touch-dev"
  ManagedOrganizationalUnit = "Dev"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "qqq"
  SSOUserLastName            = "error_no_last_name"
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
