module "sg" {
  source = "./sg"
}

module "ec2" {
  source = "./ec2"
  security_group_id = module.sg.security_group_id
}

terraform {
  backend "s3" {
    bucket = "terraform-dave"
    key    = "05-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}