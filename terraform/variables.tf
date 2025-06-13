variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of your EC2 Key Pair"
  type        = string
  default     = "clo835-assg01-key"
}
