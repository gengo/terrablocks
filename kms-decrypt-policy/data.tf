data "kms_key" "this" {
  key_id = "${var.kms_arn}"
}

data "aws_iam_policy_document" "this" {
  statement {
    sid       = "${title(var.identifier)}DecryptKMS"
    effect    = "Allow"
    actions   = ["kms:Decrypt*"]
    resources = ["${var.kms_arn}"]
  }
}

