#### outputs
output "user_name" {
  description = "The user's name."
  value       = aws_iam_user.main.name
}

output "user_arn" {
  description = "The ARN assigned by AWS for this user."
  value       = aws_iam_user.main.arn
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider `default_tags`"
  value       = aws_iam_user.main.tags_all
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_user.main.unique_id
}

output "user_policy_id" {
  description = "The user policy ID, in the form of `user_name:user_policy_name`"
  value       = aws_iam_user_policy.main.*.id
}

output "user_policy_name" {
  description = "The name of the policy (always set)."
  value       = aws_iam_user_policy.main.*.name
}

output "encrypted_password" {
  description = "The encrypted password, base64 encoded. Only available if password was handled on Terraform resource creation, not import."
  value       = aws_iam_user_login_profile.main.encrypted_password
}

output "key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on Terraform resource creation, not import."
  value       = aws_iam_user_login_profile.main.key_fingerprint
}
