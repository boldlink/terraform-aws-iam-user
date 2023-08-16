##### group and user
### Group
module "groups" {
  #checkov:skip=CKV_TF_1:Ensure Terraform module sources use a commit hash
  source       = "boldlink/iam-group/aws"
  version      = "1.0.4"
  for_each     = local.names
  group_name   = each.value
  policy_name  = "${each.value}-policy"
  group_policy = local.group_policy
}

### Users
module "complete_example" {
  #checkov:skip=CKV2_AWS_22: "Ensure an IAM User does not have access to the console"
  source                        = "../../"
  for_each                      = local.names
  name                          = each.key
  groups                        = [each.value]
  create_iam_user_login_profile = var.create_iam_user_login_profile
  tags                          = merge({ name = each.key }, var.tags)
  depends_on                    = [module.groups]
}
