output "num_servers" {
  value = "${module.consul.num_servers}"
}

output "ami_id" {
  value = "${var.ami_id}"
}

output "aws_region" {
  value = "${module.consul.aws_region}"
}
output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}

output "consul_servers_cluster_tag_key" {
  value = "${module.consul.consul_servers_cluster_tag_key}"
}

output "consul_servers_cluster_tag_value" {
  value = "${module.consul.consul_servers_cluster_tag_value}"
}