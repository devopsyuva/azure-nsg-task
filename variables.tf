variable "rg_name" {
  description = "Resoure Group to attach resources"
  type        = string
  default     = "dheeraj-demo"
}

variable "region" {
  description = "Region to lauch RG and resource"
  type        = string
  default     = "UK South"
}

variable "nsg_name" {
  description = "Network Security Group name"
  type        = string
  default     = "dheeraj-demo"
}

variable "inbound_port_ranges" {
  description = "In Bound Ports that needs to be opened for  NSG"
  type        = list(string)
  default     = ["8080", "6379", "8090", "8091"]
}
