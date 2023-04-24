variable "stack_name" {
  description = "Name of the stack"
  type        = string
  default     = "complete-example"
}

variable "create_iam_user_login_profile" {
  description = "Whether to create a login profile for IAM user or not"
  type        = bool
  default     = true
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
