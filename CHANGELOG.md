# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
- Feat: Add permissions boundary

## [1.0.3] - 2022-07-22
### Changes
- feat: Ability to create IAM Group membership from the user stack

## [1.0.2] - 2022-06-24
### Changes
- Refactored root module
- Added the `.github/workflow` folder (not supposed to run gitcommit)
- Re-factored examples
- Added `CHANGELOG.md`
- Added `CODEOWNERS`
- Added `versions.tf`, which is important for pre-commit checks
- Added `Makefile` for examples automation
- Added `.gitignore` file
- Feat: Added IAM User login profile
- Feat: Added Variable validaton for IAM user name to be in format `first_name.last_name`

## [1.0.1] - 2022-04-29
### Changes
- Changed module source

## [1.0.0] - 2022-03-07
### Description
- First commit

[Unreleased]: https://github.com/boldlink/terraform-aws-iam-user/compare/1.0.2...HEAD
[1.0.0]: https://github.com/boldlink/terraform-aws-iam-user/releases/tag/1.0.0
[1.0.1]: https://github.com/boldlink/terraform-aws-iam-user/releases/tag/1.0.1
[1.0.2]: https://github.com/boldlink/terraform-aws-iam-user/releases/tag/1.0.2
[1.0.3]: https://github.com/boldlink/terraform-aws-iam-user/releases/tag/1.0.3
