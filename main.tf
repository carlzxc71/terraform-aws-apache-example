terraform {}

provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source = ".//terraform-aws-apache-example"

  vpc_id = "vpc-01c7fe959d96f3a67"
  my_ip_with_cidr = "84.19.149.2/32"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAII8AK1etQW1h389Yx8dwWKXbhAUFpA+vVKMNyvz1u8DT carlzxc71@gmail.com"
  instance_type = "t2.micro"
}

output "pulbic_ip" {
  value = module.apache.public_ip
}