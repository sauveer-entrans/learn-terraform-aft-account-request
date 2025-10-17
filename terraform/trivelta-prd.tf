module "trivelta-prd" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+trivelta@trivelta.com"
  AccountName                = "trivelta-prd"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Carson"
  SSOUserLastName            = "Hubbard"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Promote staging to production"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
