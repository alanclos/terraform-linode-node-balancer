variable "node_balancer_region" {
  description = "The region where this NodeBalancer will be deployed."
  type        = string
}

variable "node_balancer_label" {
  description = "The label of the Linode NodeBalancer"
  type        = string
}

variable "lke_node_ids" {
  description = "List of created LKE node Linode instance ids"
  type        = list(string)
}
