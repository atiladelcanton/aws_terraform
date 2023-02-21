variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment"
}
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Region"
}

variable "aws_profile" {
  type        = string
  default     = "dev"
  description = "Profile"
}

variable "instance_ami" {
  type        = string
  default     = "ami-0557a15b87f6559cf"
  description = "AMI"
}
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Type"
}
variable "instance_tags" {
  type = map(string)
  default = {
    Name    = "Ubuntu"
    Project = "Curse AWS with Terraform"
  }
  description = "Tags"
}