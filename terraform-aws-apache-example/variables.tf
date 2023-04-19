variable "vpc_id" {
  type = string
  default = "vpc-01c7fe959d96f3a67"
}

variable "my_ip_with_cidr" {
  type        = string
  description = "Provide your IP eg. 127.0.0.1"
}

variable "public_key" {
  type = string

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}