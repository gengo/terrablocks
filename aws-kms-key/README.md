Terraform Reusable module for AWS KMS creation.
This module grants access to the root and IAM user of who creates it.

### Usage

```terraform
module "my-kms" {
  source      = "gengo/katana/shared_modules/aws-kms-key"
  name        = "KMS Alias name"
  description = "AWS KMS for encryption/decryption"
  tags        = {
    key = value
  }
}
```

### Input

| Input       | Description                    | Type   | Required |
|-------------|--------------------------------|--------|----------|
| name        | The name of the KMS key        | string | yes      |
| description | The description of the KMS key | string | yes      |
| tags        | Additional tags                | map    | no       |


### Output

| Output     | Description                         | Type   |
|------------|-------------------------------------|--------|
| arn        | the ARN identifier of the resource  | string |
