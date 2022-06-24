############
variable "user_name" {
  type        = string
  description = "The name of the IAM user to create."
  default     = null

  validation {
    condition     = can(regex("^[\\w]+(\\.[\\w]+)$", var.user_name))
    error_message = "The name must be in the format `first_name.last_name`."
  }
}

variable "path" {
  type        = string
  description = "(Optional, default `/`) Path in which to create the user."
  default     = "/"
}

variable "permissions_boundary" {
  type        = string
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the user."
  default     = null
}

variable "force_destroy" {
  type        = bool
  description = "(Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without `force_destroy` a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = false
}

variable "user_policy" {
  type        = string
  description = "(Required) The policy document. This is a JSON formatted string."
  default     = null
}

variable "policy_name_prefix" {
  type        = string
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`."
  default     = null
}

variable "pgp_key" {
  type        = string
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Only applies on resource creation. Drift detection is not possible with this argument."
  default     = null
}

variable "password_length" {
  type        = number
  description = "(Optional) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is 20."
  default     = 20
}

variable "password_reset_required" {
  type        = bool
  description = " (Optional) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation."
  default     = true
}

##########
## tags
##########

variable "name" {
  type        = string
  description = "name of the stack/resource tag"
  default     = null
}

variable "environment" {
  type        = string
  description = "The environment in which this resource is deployed to"
  default     = null
}
