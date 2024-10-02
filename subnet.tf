resource "aws_subnet" "pub1" {
  vpc_id                  = aws_vpc.qa.id
  map_public_ip_on_launch = true
  cidr_block              = "10.34.1.0/24"
  availability_zone       = "us-east-1a"
  tags = {
    name = "publicsubnet1"

  }

}

resource "aws_subnet" "pub2" {
  vpc_id                  = aws_vpc.qa.id
  map_public_ip_on_launch = true
  cidr_block              = "10.34.2.0/24"
  availability_zone       = "us-east-1a"
  tags = {
    name = "publicsubnet1"

  }

}