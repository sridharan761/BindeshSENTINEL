variable "rg_name" {
  type        = string
  description = "Resource group for the Sentinel labs"
}

variable "res_loc" {
  type        = string
  description = "Region in which resource will be created"
}

variable "law_name" {
  type        = string
  description = "Log analytics workspace name"
}

variable "law_sku" {
  type        = string
  description = "Log analytics workspace SKU"
}

variable "sentinel_dc_aad" {
  type        = string
  description = "Name of the sentinel Entra ID data connector"
}
