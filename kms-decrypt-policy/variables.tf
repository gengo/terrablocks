variable "identifier" {
  type = "string"
  description = "Prefix identifier name for roles and policy names"
}
variable "kms_arn" {
  type = "string"
  description = "KMS Resource ARN"
}
variable "iam_role_name" {
  type = "string"
  description = "IAM role name"
}
