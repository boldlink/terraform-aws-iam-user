variable "name" {
  type        = string
  description = "The name of the IAM user to create."
  default     = "minimum.example"
}

variable "tags" {
  type        = map(string)
  description = "The map of tags to apply to the resources"
  default = {
    Environment        = "example"
    "user::CostCenter" = "terraform-registry"
    Department         = "DevOps"
    Project            = "Examples"
    Owner              = "Boldlink"
    LayerName          = "Example"
    LayerId            = "Example"
  }
}
