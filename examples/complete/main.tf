#####
module "complete_example" {
  source        = "../../"
  count         = length(local.users)
  name          = element(local.users, count.index)
  force_destroy = true
  user_policy   = local.user_policy

  tags = {
    Name        = element(local.users, count.index)
    Environment = "development"
  }
}
