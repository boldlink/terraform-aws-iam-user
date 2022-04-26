locals {
  name          = "boldlink"
  environment   = "development"
  policy_name   = "development-policy"
  iam_user_name = "test-user"
}

module "iam_user" {
  source        = "boldlink/iam-user/aws"
  iam_user_name = local.iam_user_name
  name          = local.name
  force_destroy = true
  environment   = local.environment
  policy_name   = local.policy_name
  user_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
