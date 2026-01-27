module "global-artifacts-manager" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+global-artifacts-manager@trivelta.com"
  AccountName                = "global-artifacts-manager"
  ManagedOrganizationalUnit = "Infrastructure"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Global"
  SSOUserLastName            = "Artifacts Manager"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Account for central artifact management"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
