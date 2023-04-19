#### Minimal example
module "minimal_example" {
  #checkov:skip=CKV2_AWS_22: "Ensure an IAM User does not have access to the console"
  source = "../../"
  name   = var.name
  tags   = merge({ name = var.name }, var.tags)
}
