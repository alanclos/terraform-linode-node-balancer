terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.16.0"
    }
  }
}

data "linode_instances" "nodes" {
  filter {
    name   = "id"
    values = var.lke_node_ids
  }
}

resource "linode_nodebalancer" "this" {
  label  = var.node_balancer_label
  region = var.node_balancer_region
}

resource "linode_nodebalancer_config" "http" {
  nodebalancer_id = linode_nodebalancer.this.id
  port            = 80
  protocol        = "http"
  algorithm       = "roundrobin"
}

resource "linode_nodebalancer_config" "https" {
  nodebalancer_id = linode_nodebalancer.this.id
  port            = 443
  protocol        = "http"
  algorithm       = "roundrobin"
}

resource "linode_nodebalancer_node" "http" {
  for_each        = { for instance in data.linode_instances.nodes.instances : instance.private_ip_address => instance }
  label           = "${var.node_balancer_label}-http"
  nodebalancer_id = linode_nodebalancer.this.id
  config_id       = linode_nodebalancer_config.http.id
  address         = "${each.key}:80"
  weight          = 100
}

resource "linode_nodebalancer_node" "https" {
  for_each        = { for instance in data.linode_instances.nodes.instances : instance.private_ip_address => instance }
  label           = "${var.node_balancer_label}-https"
  nodebalancer_id = linode_nodebalancer.this.id
  config_id       = linode_nodebalancer_config.https.id
  address         = "${each.key}:443"
  weight          = 100
}
