# External DNS for EKS

terraform module [External-dns](https://github.com/kubernetes-sigs/external-dns) for aws.

```
module "external_dns" {
  source = "../../modules/aws/external-dns"
  
  domain = "k8smm.org"
}
```
