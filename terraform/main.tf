module "sandbox" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+adminappstg@trivelta.com"
  AccountName                = "Admin-App-Stg"
  ManagedOrganizationalUnit = "Stg"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Admin"
  SSOUserLastName            = "AppSTG"
}

account_tags = {
  env     = "stg"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "Create a new Stg AWS Account"
}

custom_fields = {
  group = "stg"
}

account_customizations_name = "sandbox"
}
