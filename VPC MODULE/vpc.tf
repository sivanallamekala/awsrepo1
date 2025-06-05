resource "aws_vpc" "VPC" {
  cidr_block = var.ipaddress
  tags ={
    Name = var.vpc-name
    
  }
}

resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block =var.pubsub-ip

  tags = {
    Name = var.pubsub-name
  }
}

resource "aws_subnet" "pvt-sub" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.pvtsub-ip

  tags = {
    Name = var.pvtsub-name
  }
}