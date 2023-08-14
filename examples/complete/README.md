[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-iam-user/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-iam-user.svg)](https://github.com/boldlink/terraform-aws-iam-user/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/module-examples-tests.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/auto-merge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform module example of the most common configuration

## Checkov Alerts:
In this example the alert `CKV2_AWS_22: "Ensure an IAM User does not have access to the console"` has been skipped since initial passwords are being created for the users.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.11 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_complete_example"></a> [complete\_example](#module\_complete\_example) | ../../ | n/a |
| <a name="module_groups"></a> [groups](#module\_groups) | boldlink/iam-group/aws | 1.0.4 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_iam_user_login_profile"></a> [create\_iam\_user\_login\_profile](#input\_create\_iam\_user\_login\_profile) | Whether to create a login profile for IAM user or not | `bool` | `true` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | Name of the stack | `string` | `"complete-example"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The map of tags to apply to the resources | `map(string)` | <pre>{<br>  "Department": "DevOps",<br>  "Environment": "example",<br>  "LayerId": "Example",<br>  "LayerName": "Example",<br>  "Owner": "Boldlink",<br>  "Project": "Examples",<br>  "user::CostCenter": "terraform-registry"<br>}</pre> | no |

## Outputs

No outputs.
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

#### BOLDLink-SIG 2022
