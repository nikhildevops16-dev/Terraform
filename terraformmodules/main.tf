terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value  = "ami-08a6efd148b1f7504"
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-09ce9fea399757fb5"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "nikhildevops16"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}