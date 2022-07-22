[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# AWS IAM User Terraform module

## Description
This module creates an AWS IAM user with policy defining the permissions the user has.

Example available [here](https://github.com/boldlink/terraform-aws-iam-user/tree/main/examples)

## Usage
*NOTE*: These examples use the latest version of this module

```hcl
#### Minimal example
locals {
  users = [
    "minimal.example1",
    "minimal.example2"
  ]
}

module "minimal_example" {
  source        = "../../"
  count         = length(local.users)
  name          = element(local.users, count.index)
  force_destroy = true
}
```

## Documentation

[AWS Identity and Access Management Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)

[Terraform provider documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_login_profile.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | (Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without `force_destroy` a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | `bool` | `false` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | A list of IAM Groups to add the user to | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the IAM user to create. | `string` | `null` | no |
| <a name="input_password_length"></a> [password\_length](#input\_password\_length) | (Optional) The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is 20. | `number` | `20` | no |
| <a name="input_password_reset_required"></a> [password\_reset\_required](#input\_password\_reset\_required) | (Optional) Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation. | `bool` | `true` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional, default `/`) Path in which to create the user. | `string` | `"/"` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | (Optional) The ARN of the policy that is used to set the permissions boundary for the user. | `string` | `null` | no |
| <a name="input_pgp_key"></a> [pgp\_key](#input\_pgp\_key) | (Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:username. Only applies on resource creation. Drift detection is not possible with this argument. | `string` | `null` | no |
| <a name="input_policy_name_prefix"></a> [policy\_name\_prefix](#input\_policy\_name\_prefix) | (Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with `name`. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The map of tags to apply to the resources | `map(string)` | `{}` | no |
| <a name="input_user_policy"></a> [user\_policy](#input\_user\_policy) | (Required) The policy document. This is a JSON formatted string. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_encrypted_password"></a> [encrypted\_password](#output\_encrypted\_password) | The encrypted password, base64 encoded. Only available if password was handled on Terraform resource creation, not import. |
| <a name="output_key_fingerprint"></a> [key\_fingerprint](#output\_key\_fingerprint) | The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on Terraform resource creation, not import. |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider `default_tags` |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | The unique ID assigned by AWS. |
| <a name="output_user_arn"></a> [user\_arn](#output\_user\_arn) | The ARN assigned by AWS for this user. |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | The user's name. |
| <a name="output_user_policy_id"></a> [user\_policy\_id](#output\_user\_policy\_id) | The user policy ID, in the form of `user_name:user_policy_name` |
| <a name="output_user_policy_name"></a> [user\_policy\_name](#output\_user\_policy\_name) | The name of the policy (always set). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Third party software
This repository uses third party software:
* [pre-commit](https://pre-commit.com/) - Used to help ensure code and documentation consistency
  * Install with `brew install pre-commit`
  * Manually use with `pre-commit run`
* [terraform 0.14.11](https://releases.hashicorp.com/terraform/0.14.11/) For backwards compatibility we are using version 0.14.11 for testing making this the min version tested and without issues with terraform-docs.
* [terraform-docs](https://github.com/segmentio/terraform-docs) - Used to generate the [Inputs](#Inputs) and [Outputs](#Outputs) sections
  * Install with `brew install terraform-docs`
  * Manually use via pre-commit
* [tflint](https://github.com/terraform-linters/tflint) - Used to lint the Terraform code
  * Install with `brew install tflint`
  * Manually use via pre-commit

### Makefile
The makefile contained in this repo is optimized for linux paths and the main purpose is to execute testing for now.
* Create all tests:
`$ make tests`
* Clean all tests:
`$ make clean`

#### BOLDLink-SIG 2022
