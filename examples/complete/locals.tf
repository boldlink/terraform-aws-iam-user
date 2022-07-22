##### creation of users and their group membership
locals {
  stack_name = "complete_example"
  names = {
    "user.name1" = "${local.stack_name}-Group1"
    "user.name2" = "${local.stack_name}-Group2"
    "user.name3" = "${local.stack_name}-Group3"
  }

  group_policy = jsonencode({
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
