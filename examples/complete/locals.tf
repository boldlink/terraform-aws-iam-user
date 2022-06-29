##### creation of users
locals {
  environment = "development"
  users = [
    "example.user0",
    "example.user5"
  ]

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
