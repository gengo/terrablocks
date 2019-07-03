resource "aws_iam_policy" "this" {
  name        = "${title(var.identifier)}DecryptKMS"
  description = "KMS decryption policy for ${var.identifier}."
  policy      = "${data.aws_iam_policy_document.this.json}"
}

resource "aws_iam_role_policy_attachment" "this" {
  role = "${var.iam_role_name}"
  policy_arn = "${aws_iam_policy.this.arn}"
}
