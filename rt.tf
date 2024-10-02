resource "aws_route_table" "pvrrt" {
vpc_id = aws_vpc.qa.id
route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.venkat.id
    }
tags = {
  name = "pvr-rt"
}
}


resource "aws_route_table_association" "publicsubnet1" {
    subnet_id = aws_subnet.pub1.id
    route_table_id = aws_route_table.pvrrt.id
  
}

resource "aws_route_table_association" "publicsubnet2" {
    subnet_id = aws_subnet.pub2.id
    route_table_id = aws_route_table.pvrrt.id
  
}