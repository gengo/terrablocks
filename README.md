## Terrablocks

Terraform reusable [resource](https://www.terraform-best-practices.com/key-concepts#resource) modules.

### Adding a module
Please take a look at the official Terraform Module [Registry](https://registry.terraform.io/) first.

If the registered module is too complicated for Gengo's use, isn't verified or doesn't really suited for us, make a pull request.

Recommended reading: [Terraform best practices](https://www.terraform-best-practices.com/key-concepts#resource)


### Example
Use //module-dir to source a specific module.
```terraform
module "kms" {
    source = "git@github.com:gengo/terrablocks.git//aws-kms-key?ref=1.0.0"
    ...
    # required variables
}
```
