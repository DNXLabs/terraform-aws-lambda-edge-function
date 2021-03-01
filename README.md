# terraform-aws-template

[![Lint Status](https://github.com/DNXLabs/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-template/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-template)](https://github.com/DNXLabs/terraform-aws-template/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| terraform | >= 0.12.20 |
| aws | >= 2.55.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.55.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| execution\_role\_name | n/a | `string` | n/a | yes |
| execution\_role\_policy\_document | The contents of the IAM policy attached to the IAM Execution role used by the Lambda.  If not defined, then creates the policy with permissions to log to CloudWatch Logs. | `string` | `""` | no |
| execution\_role\_policy\_name | The name of the IAM policy attached to the IAM Execution role used by the Lambda.  If not defined, then uses the value of "execution\_role\_name". | `string` | `""` | no |
| filename | The path to the function's deployment package within the local filesystem.  If defined, the s3\_-prefixed options cannot be used. | `string` | n/a | yes |
| function\_description | Description of what your Lambda Function does. | `string` | `""` | no |
| function\_name | A unique name for your Lambda Function. | `string` | n/a | yes |
| handler | The function entrypoint in your code. | `string` | n/a | yes |
| memory\_size | Amount of memory in MB your Lambda Function can use at runtime.  Maximum value for Viewer Request or Response events is 128. | `number` | `128` | no |
| runtime | The identifier of the function's runtime. | `string` | n/a | yes |
| tags | A mapping of tags to assign to the Lambda Function. | `map(string)` | <pre>{<br>  "Automation": "Terraform"<br>}</pre> | no |
| timeout | The amount of time your Lambda Function has to run in seconds.  Maximum value is 5 seconds. | `number` | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_execution\_role\_arn | The  Amazon Resource Name (ARN) identifying the IAM Role used to execute this Lambda. |
| lambda\_function\_arn | The Amazon Resource Name (ARN) identifying your Lambda Function. |
| lambda\_function\_name | A unique name for your Lambda Function. |
| lambda\_function\_qualified\_arn | The Amazon Resource Name (ARN) identifying your Lambda Function Version. |
| lambda\_invoke\_arn | The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws\_api\_gateway\_integration's uri. |

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-template/blob/master/LICENSE) for full details.