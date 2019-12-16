variable "name" {
  default = ""
  description = "Target Group name."
}
variable "tags" {
  type    = "map"
  default = {}
  description = "Setting tags for the feature" 
}
variable "my_team" {
  default = ""
  default = "Team owner application."
}

variable "product" {
  default = ""
  description = "Product our project name."
}

variable "business_owner" {
  default = ""
  description = "Business owner."
}

variable "service_type" {
  default = ""
  description = "Type of service."
}

variable "environment" {
  default = ""
  description = "Application environment."
}

variable "vpc_id" {
  default = ""
  description = "The identifier of the VPC in which to create the target group."
}


variable "port" {
  default = ""
  description = "The port on which targets receive traffic, unless overridden when registering a specific target. Required when target_type is instance or ip."
}

variable "protocol" {
  default = "HTTPS"
  description = "The protocol to use for routing traffic to the targets. Should be one of TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS."
}

variable "interval" {
  default = "30"
  description = "The approximate amount of time, in seconds, between health checks of an individual target. Minimum value 5 seconds, Maximum value 300 seconds."
}

variable "healthy_threshold" {
  default = "3"
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy."
}

variable "unhealthy_threshold" {
  default = "3"
  description = "The number of consecutive health check failures required before considering the target unhealthy . For Network Load Balancers, this value must be the same as the healthy_threshold."
}