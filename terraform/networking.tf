module "networking" {
source = "./modules/aft-account-request"

control_tower_parameters = {
  AccountEmail               = "aws+networking@trivelta.com"
  AccountName                = "networking"
  ManagedOrganizationalUnit = "Infrastructure"
  SSOUserEmail               = "aws@trivelta.com"
  SSOUserFirstName           = "Chris"
  SSOUserLastName            = "McMahon"
}

account_tags = {
  env     = "prod"
  project = "Trivelta"
}

change_management_parameters = {
  change_requested_by = "aws+jenkinsNonProd@trivelta.com"
  change_reason       = "For ArgoCD to communicate to tenant accounts"
}

custom_fields = {
  group = "prod"
}

account_customizations_name = "sandbox"
}
