provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
    description = "Enter ami id"
}

variable "instance_type_value" {
  description = "This is the instance type, for example: t2.micro"
}

resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.instance_type_value
 
}