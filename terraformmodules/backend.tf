terraform {
  backend "s3" {
    bucket = "nikhildevops16"
    key    = "Nikhil/terraform.tfstate"
    region = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
