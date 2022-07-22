######
resource "aws_iam_user" "main" {
  name                 = var.name
  path                 = var.path
  force_destroy        = var.force_destroy
  permissions_boundary = var.permissions_boundary
  tags                 = var.tags
}

resource "aws_iam_user_policy" "main" {
  count       = var.user_policy != null ? 1 : 0
  name        = var.name
  user        = aws_iam_user.main.name
  policy      = var.user_policy
  name_prefix = var.policy_name_prefix
}

resource "aws_iam_user_login_profile" "main" {
  user                    = aws_iam_user.main.name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required

  lifecycle {
    ignore_changes = [
      password_length,
      password_reset_required,
      pgp_key,
    ]
  }
}

### For controlling group membership at the user stack level. Has no exclusivity
resource "aws_iam_user_group_membership" "main" {
  count  = length(var.groups) > 0 ? 1 : 0
  user   = aws_iam_user.main.name
  groups = var.groups
}
