# Terraform Cloud Linode Node Balancer Module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 2.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_nodebalancer.this](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/nodebalancer) | resource |
| [linode_nodebalancer_config.http](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/nodebalancer_config) | resource |
| [linode_nodebalancer_config.https](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/nodebalancer_config) | resource |
| [linode_nodebalancer_node.http](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/nodebalancer_node) | resource |
| [linode_nodebalancer_node.https](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/resources/nodebalancer_node) | resource |
| [linode_instances.nodes](https://registry.terraform.io/providers/linode/linode/2.16.0/docs/data-sources/instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lke_node_ids"></a> [lke\_node\_ids](#input\_lke\_node\_ids) | List of created LKE node Linode instance ids | `list(string)` | n/a | yes |
| <a name="input_node_balancer_label"></a> [node\_balancer\_label](#input\_node\_balancer\_label) | The label of the Linode NodeBalancer | `string` | n/a | yes |
| <a name="input_node_balancer_region"></a> [node\_balancer\_region](#input\_node\_balancer\_region) | The region where this NodeBalancer will be deployed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostname"></a> [hostname](#output\_hostname) | This NodeBalancer's hostname, ending with .ip.linodeusercontent.com |
| <a name="output_ipv4"></a> [ipv4](#output\_ipv4) | The Public IPv4 Address of this NodeBalancer |
<!-- END_TF_DOCS -->