#####
module "complete_example" {
  source        = "../../"
  count         = length(local.users)
  name          = element(local.users, count.index)
  force_destroy = true
  environment   = local.environment
  user_policy   = local.user_policy
}
