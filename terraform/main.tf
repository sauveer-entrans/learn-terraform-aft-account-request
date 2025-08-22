module "sandbox" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "null"
  AccountName                = "null"
  ManagedOrganizationalUnit = "null"
  SSOUserEmail               = "null"
  SSOUserFirstName           = "null"
  SSOUserLastName            = "null"
}

account_tags = {
  env     = "null"
  project = "null"
}

change_management_parameters = {
  change_requested_by = "null"
  change_reason       = "null"
}

custom_fields = {
  group = "null"
}

account_customizations_name = "null"
}
