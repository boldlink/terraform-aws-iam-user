variable "iam_user_name" {
  type        = string
  description = "(Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both `TESTUSER` and `testuser`."
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
}

variable "policy_name" {
  type        = string
  description = "(Optional) The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = null
}

variable "policy_name_prefix" {
  type        = string
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`."
  default     = null
}

variable "iam_access_key_status" {
  type        = string
  description = "(Optional) Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`."
  default     = "Active"
}

variable "pgp_key" {
  type        = string
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute."
  default     = null
}

/*
tags
*/

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
