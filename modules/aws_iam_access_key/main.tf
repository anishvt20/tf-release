resource "aws_iam_access_key" "this" {
  user    = local.user
  pgp_key = local.pgp_key
  status  = local.status
}

