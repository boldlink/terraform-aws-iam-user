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
