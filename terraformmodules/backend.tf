terraform {
  backend "s3" {
    bucket = "nikhildevops16"
    key    = "Nikhil/terraform.tfstate"
    region = "us-east-1"
  }
}
