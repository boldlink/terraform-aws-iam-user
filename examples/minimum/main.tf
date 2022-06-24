#### Minimal example
locals {
  environment = "development"
  user_names = [
    "minimal.example1",
    "minimal.example2"
  ]
}

module "minimal_example" {
  source        = "../../"
  count         = length(local.user_names)
  user_name     = element(local.user_names, count.index)
  name          = element(local.user_names, count.index)
  force_destroy = true
  environment   = local.environment
}
