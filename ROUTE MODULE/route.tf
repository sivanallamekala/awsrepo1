resource "aws_route_table" "rt1" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.ipaddress01
    gateway_id = var.igw-id
  }

  tags = {
    Name = var.rt1-name
  }
}

resource "aws_route_table_association" "pubastn" {
  subnet_id      = var.sub1-id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table" "rt2" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.ipaddress02
    gateway_id = var.igw-id
  }

  tags = {
    Name = var.rt2-name
  }
}
resource "aws_route_table_association" "pvtastn" {
  subnet_id      = var.sub2-id
  route_table_id = aws_route_table.rt2.id
}