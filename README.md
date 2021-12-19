# terraform-aws-dms

[![Lint Status](https://github.com/FabioORamos/terraform-aws-rds/workflows/Lint/badge.svg)](https://github.com/FabioORamos/terraform-aws-rds/actions)
[![LICENSE](https://img.shields.io/github/license/FabioORamos/terraform-aws-rds)](https://github.com/FabioORamos/terraform-aws-rds/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| certificate\_arn | The Amazon Resource Name (ARN) for the certificate | `any` | n/a | yes |
| database\_name | The name of the endpoint database | `any` | n/a | yes |
| endpoint\_id | The database endpoint identifier | `any` | n/a | yes |
| endpoint\_type | Endpoint type: `source` or `target` | `string` | `""` | no |
| engine\_name | The type of engine for the endpoint. Can be one of aurora \| aurora-postgresql\| azuredb \| db2 \| docdb \| dynamodb \| elasticsearch \| kafka \| kinesis \| mariadb \| mongodb \| mysql \| oracle \| postgres \| redshift \| s3 \| sqlserver \| sybase | `string` | `""` | no |
| kms\_key\_arn | KMS Key ARN to use a CMK instead of default shared key, when storage\_encrypted is true | `string` | `""` | no |
| password | The password to be used to login to the endpoint database | `any` | n/a | yes |
| port | The port used by the endpoint database | `any` | n/a | yes |
| server\_name | The host name of the server | `any` | n/a | yes |
| username | The user name to be used to login to the endpoint database | `any` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/FabioORamos).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/FabioORamos/terraform-aws-template/blob/master/LICENSE) for full details.