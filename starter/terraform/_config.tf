terraform {
  backend "s3" {
    bucket = "udacity-dev-east-sre-terraform-state"
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}
