Terraform Module to provision an EC2 Instance that is running Apache

Not intended for PROD use, just showcasing how to create a custom module on Terraform Registry

```hcl

terraform {}

provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source = ".//terraform-aws-apache-example"

  vpc_id = "vpc-00000000"
  my_ip_with_cidr = "MY_OWN_IP"
  public_key = "ssh-ed25519 KEY... username"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = module.apache.public_ip
}

```

