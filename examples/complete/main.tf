##### group and user
### Group
module "groups" {
  source       = "boldlink/iam-group/aws"
  version      = "1.0.4"
  for_each     = local.names
  group_name   = each.value
  policy_name  = "${each.value}-policy"
  group_policy = local.group_policy
}

### Users
module "complete_example" {
  source   = "../../"
  for_each = local.names
  name     = each.key
  groups   = [each.value]

  tags = {
    Name        = each.key
    Environment = "examples"
  }
  depends_on = [module.groups]
}
