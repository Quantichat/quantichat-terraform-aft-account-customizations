data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "quantichat_devops_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
