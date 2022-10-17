
variable "subscription_id" {
  default = "1ee3fbb7-48aa-48f3-b8b9-4cb5cadba4e3" // Add your azure subcription_id here
}

variable "resource_group_name" {
  default = "zzzstorage-rg"
}

variable "resource_group_location" {
  default = "uksouth"
}

variable "account-tier" {
  default = "Standard"
}

variable "account_replication_type" {
  default = "GRS"
}
