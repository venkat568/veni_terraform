resource "aws_vpc" "qa" {
  cidr_block           = "10.34.0.0/16"
  enable_dns_hostnames = true
  tags = {
    name = "kousik-vpc"
  }

}