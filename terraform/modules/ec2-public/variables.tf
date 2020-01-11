variable "comp" {
  description = "Name of component: bastion, app, worker, etc."
}

variable "name" {
  description = "Name tag of instance, var.app_name-var.comp if empty"
  default = ""
}

variable "host_name" {
  description = "DNS name, var.name if empty"
  default = ""
}

variable "dns_domain" {
  description = "DNS domain (zone)"
  default = ""
}

variable "dns_zone_id" {
  description = "Route53 DNS zone id"
  default = ""
}

variable "instance_profile_name" {
  description = "Instance profile"
  default = ""
}

variable "subnet_ids" {
  description = "VPC subnet ids"
  type = list
}

variable "security_group_ids" {
  description = "Security group ids"
  type = list
}

variable "availability_zones" {
  description = "Availaibility zones"
  type        = list(string)
}

variable "instance_count" {
  description = "Number of instances to create. If 0, will create one per subnet"
  default     = 1
}

variable "ami" {
  description = "ID of AMI to use for the instance"
}

variable "instance_type" {
  description = "Type of instance to start"
  default     = "t2.micro"
}

variable "keypair_name" {
  description = "Name of keypair for the instance"
}

variable "disable_api_termination" {
  description = "If true, enable EC2 Instance Termination Protection"
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance"
  default     = "stop"
}

variable "monitoring" {
  description = "Enable detailed monitoring for instance"
  default     = false
}

variable "user_data" {
  description = "User data to provide when launching the instance"
  default     = ""
}

variable "root_volume_size" {
  description = "Size of root block device (in GiB)"
  default     = 8
}

variable "assign_eip" {
  description = "Assign an EIP"
  default     = false
}

variable "dns_health_check" {
  description = "Enable Route53 health check"
  default     = false
}

variable "health_check_port" {
  description = "Route53 health check port"
  default     = 80
}

variable "health_check_type" {
  description = "Route53 health check type"
  default     = "HTTP"
}

variable "health_check_resource_path" {
  description = "Route53 health check resource_path"
  default     = "/"
}

variable "health_check_failure_threshold" {
  description = "Route53 health check failure_threshold"
  default     = "5"
}

variable "health_check_request_interval" {
  description = "Route53 health check request_interval"
  default     = "30"
}

variable "create_dns" {
  description = "Create DNS records for instance"
  default     = false
}

variable "dns_ttl" {
  description = "DNS record time to live"
  default     = 60
}
