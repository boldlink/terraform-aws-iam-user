##### creation of users and their group membership
locals {
  names = {
    "user.name1" = "${var.stack_name}-Group1"
    "user.name2" = "${var.stack_name}-Group2"
    "user.name3" = "${var.stack_name}-Group3"
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
