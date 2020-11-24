# External DNS for EKS

terraform module [External-dns](https://github.com/kubernetes-sigs/external-dns) for aws.

```
module "external_dns" {
  source = "../../modules/aws/external-dns"
  
  domain = "k8smm.org"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| kubernetes | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_iam\_role\_for\_policy | AWS role name for attaching IAM policy | `string` | `null` | no |
| domain | Additional labels to be added to the Pods. | `list(string)` | n/a | yes |
| external\_dns\_version | The AWS External DNS version to use. See https://github.com/kubernetes-sigs/external-dns/releases for available versions | `string` | `"0.7.4"` | no |
| k8s\_cluster\_type | K8s cluster Type | `string` | `"eks"` | no |
| k8s\_namespace | Kubernetes namespace to deploy the AWS External DNS into. | `string` | `"kube-system"` | no |
| k8s\_pod\_labels | Additional labels to be added to the Pods. | `map(string)` | `{}` | no |
| k8s\_replicas | Amount of replicas to be created. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| kubernetes\_deployment | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
