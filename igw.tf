resource "aws_internet_gateway" "venkat" {
  vpc_id = aws_vpc.qa.id
  tags = {
    name = "venkat.igw"
  }

}