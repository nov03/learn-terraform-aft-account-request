module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tf-org-sandbox+sandbox-aft-01@serverworks.co.jp"
    AccountName               = "sandbox-aft-01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "tf-org-sandbox@serverworks.co.jp"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
