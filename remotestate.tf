terraform {
  backend "s3" {
    bucket = "pipilo-state-file"
    key    = "pipilo/terraform.tfstate"
    region = "eu-west-1"
  }
}