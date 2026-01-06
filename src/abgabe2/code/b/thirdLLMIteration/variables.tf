variable "aws_region" {
  default = "us-east-1"
}

variable "notification_email" {
  description = "Email address to receive SNS notifications"
  type        = string
}

variable "my_ip" {
  description = "Your IP for SSH access (e.g. 1.2.3.4/32)"
  type        = string
}
