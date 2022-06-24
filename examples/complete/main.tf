#####
module "complete_example" {
  source        = "../../"
  count         = length(local.user_names)
  user_name     = element(local.user_names, count.index)
  name          = element(local.user_names, count.index)
  force_destroy = true
  environment   = local.environment
  user_policy   = local.user_policy
}
