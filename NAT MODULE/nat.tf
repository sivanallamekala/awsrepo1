resource "aws_nat_gateway" "nat" {
  allocation_id = var.nateip
  subnet_id     = var.pvt-sub

  tags = {
    Name = var.nat-name
  }
}
