# Node Balancer Newline
output "ipv4" {
  description = "The Public IPv4 Address of this NodeBalancer"
  value       = linode_nodebalancer.this.ipv4
}

output "hostname" {
  description = "This NodeBalancer's hostname, ending with .ip.linodeusercontent.com"
  value       = linode_nodebalancer.this.hostname
}
