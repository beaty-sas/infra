variable "region" {
    type = string
    description = "AWS region"
    default = "eu-central-1"
}

variable "project_name" {
  type = string
  description = "Project name"
  default = "Beauty-ass"
}

variable "ec2_instance_type" {
  type        = string
  description = "ECS EC2 instance type"
  default     = "t3.medium"
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with Instance"
  type        = string
  default     = "production-key-pair"
}

variable "ecs_ec2_spot_price" {
  type        = number
  description = "Max price for EC2 instance in ECS"
  default     = 0.0214
}