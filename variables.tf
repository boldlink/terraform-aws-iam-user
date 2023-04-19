############

variable "name" {
  type        = string
  description = "The name of the IAM user to create."
  default     = null
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

variable "groups" {
  type        = list(string)
  description = "A list of IAM Groups to add the user to"
  default     = []
}

variable "create_iam_user_login_profile" {
  description = "Whether to create a login profile for IAM user or not"
  type        = bool
  default     = false
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
variable "tags" {
  type        = map(string)
  description = "The map of tags to apply to the resources"
  default     = {}
}
