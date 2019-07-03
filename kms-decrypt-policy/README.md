## KMS Decryption policy

This module attaches KMS decryption policy to a specified role.

### Usage
```terraform
module "my-kms-policy" {
  source            = "git@github.com:gengo/terrablocks.git//kms-decrypt-policy"
  identifier        = "k8s"
  kms_arn           = "arn:aws:kms:...."
  aws_iam_role_name = "rolename"
}
```

### Input
| Input         | Description                                       | Type   | default | Required |
|---------------|---------------------------------------------------|--------|---------|----------|
| identifier    | Prefix identifier name for roles and policy names | string | n/a     | yes      |
| kms_arn       | KMS Resource ARN                                  | string | n/a     | yes      |
| iam_role_name | IAM role name                                     | string | n/a     | yes      |
