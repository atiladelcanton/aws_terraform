variable "environment" {
  type        = string
  description = "Environment"
}
variable "aws_region" {
  type        = string
  description = "Region"
}

variable "aws_profile" {
  type        = string
  description = "Profile"
}

variable "instance_ami" {
  type        = string
  description = "AMI"
}
variable "instance_type" {
  type        = string
  description = "Type"
}
variable "instance_tags" {
  type = map(string)
   description = "Tags"
}