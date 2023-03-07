variable "operations-email-address" {
  default = ""
}

variable "operations-name" {
  default = "Oppie the Operator"
}

variable "operations-phone-number" {
  default = "555-555-5555"
}

variable "operations-team-name" {
  default = ""
}

variable "account-email-base" {
  default = ""
}

variable "account-name" {

}

variable "sso-user-email" {

}

variable "sso-user-first-name" {

}

variable "sso-user-last-name" {

}

variable "requestor-name" {
  default = "No Name"
}

variable "request-comment" {
  default = "Requesting a new account"
}

variable "account-customization-name" {
  default = "sandbox"
}

# These defaults will not work, but are being set to avoid them beinf presented as options in the no-code UI.  Assume these will be overridden by env vars
variable "aft-exec-role-arn" {
  default = ""
}
variable "managed-organizational-unit" {
  default = ""
}