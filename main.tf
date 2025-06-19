provider "aws" {
  region = "ap-south-1"
}

module "grse_instance" {
  source            = "./modules/ec2"
  name              = "GRSE-APP&DB"
  ami               = "ami-0f58c8c41c0f44f06" # Example for t4g — please verify
  instance_type     = "t4g.2xlarge"
  key_name          = "GRSE-key"
  subnet_id         = var.subnet_id
  security_group_ids = var.security_group_ids
  root_volume       = 30
}

