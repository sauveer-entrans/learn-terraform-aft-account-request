module "rebet-mexico-prd" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = ""
  AccountName                = "rebet-mexico-prd"
  ManagedOrganizationalUnit = ""
  SSOUserEmail               = ""
  SSOUserFirstName           = ""
  SSOUserLastName            = ""
}

account_tags = {
  env     = "prod"
  project = ""
}

change_management_parameters = {
  change_requested_by = ""
  change_reason       = ""
}

custom_fields = {
  group = ""
}

account_customizations_name = ""
}
