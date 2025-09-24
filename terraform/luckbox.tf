module "luckbox" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+luckbox@trivelta.com"
  AccountName                = "luckbox"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Tyler"
  SSOUserLastName            = "Graeber"
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
