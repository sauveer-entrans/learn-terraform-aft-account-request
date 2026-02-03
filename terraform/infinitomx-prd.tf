module "infinitomx-prd" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "infinitomx-prd@trivelta.com"
  AccountName                = "infinitomx-prd"
  ManagedOrganizationalUnit = "Prd"
  SSOUserEmail               = "infinitomx-prd@trivelta.com"
  SSOUserFirstName           = "Admin"
  SSOUserLastName            = "User"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Local execution via CLI"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
