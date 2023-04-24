[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://github.com/boldlink/terraform-aws-iam-user/blob/main/LICENSE)
[![Latest Release](https://img.shields.io/github/release/boldlink/terraform-aws-iam-user.svg)](https://github.com/boldlink/terraform-aws-iam-user/releases/latest)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/update.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/release.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/pre-commit.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/pr-labeler.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/module-examples-tests.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/checkov.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)
[![Build Status](https://github.com/boldlink/terraform-aws-iam-user/actions/workflows/auto-badge.yaml/badge.svg)](https://github.com/boldlink/terraform-aws-iam-user/actions)

[<img src="https://avatars.githubusercontent.com/u/25388280?s=200&v=4" width="96"/>](https://boldlink.io)

# Terraform module example of the least configuration

## Checkov Alerts:
In this example the alert `CKV2_AWS_22: "Ensure an IAM User does not have access to the console"` has been skipped since the resource `aws_iam_user_login_profile` has been disabled.

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
| <a name="module_minimal_example"></a> [minimal\_example](#module\_minimal\_example) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the IAM user to create. | `string` | `"minimum.example"` | no |
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
