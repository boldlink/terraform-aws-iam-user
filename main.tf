resource "aws_iam_user" "main" {
  name                 = var.iam_user_name
  path                 = var.path
  permissions_boundary = var.permissions_boundary

  tags = {
    name        = var.name
    environment = var.environment
  }
}

resource "aws_iam_access_key" "main" {
  user    = aws_iam_user.main.name
  pgp_key = var.pgp_key
  status  = var.iam_access_key_status
}

resource "aws_iam_user_policy" "main" {
  name        = var.policy_name
  user        = aws_iam_user.main.name
  policy      = var.user_policy
  name_prefix = var.policy_name_prefix
}
