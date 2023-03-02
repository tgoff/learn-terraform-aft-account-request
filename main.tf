locals {
  alternate_contact = jsonencode(
    {
      "operations" = {
        "email-address" = var.operations-email-address,
        "name"          = var.operations-name,
        "phone-number"  = var.operations-phone-number,
        "title"         = var.operations-team-name
      },
    }
  )
}

module "aft-account" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = var.account-email
    AccountName               = var.account-name
    ManagedOrganizationalUnit = var.managed-organizational-unit
    SSOUserEmail              = var.sso-user-email
    SSOUserFirstName          = var.sso-user-first-name
    SSOUserLastName           = sso-user-last-nane
  }

  account_tags = {
    "managed-by-aft" = "true"
  }

  change_management_parameters = {
    change_requested_by = var.requestor-name
    change_reason       = var.request-comment
  }

  custom_fields = {
    group             = "non-prod"
    alternate_contact = local.alternate_contact
  }

  account_customizations_name = var.account-customization-name
}
