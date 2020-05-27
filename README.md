# External DNS for EKS


```
module "external_dns" {
  source = "../../modules/aws/external-dns"
  
  domain = "k8smm.org"
}
```
