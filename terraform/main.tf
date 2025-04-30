module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+testClient02@trivelta.com"
    AccountName               = "Test Client02"
    ManagedOrganizationalUnit = "Dev"
    SSOUserEmail              = "aws@trivelta.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "Client02"
  }

  account_tags = {
    "env" = "dev"
  }

  change_management_parameters = {
    change_requested_by = "aws@trivelta.com"
    change_reason       = "Create a new Dev AWS Account"
  }

  custom_fields = {
    group = "dev"
  }

  account_customizations_name = "sandbox"
}
