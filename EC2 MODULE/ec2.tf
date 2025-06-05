 resource "aws_instance" "web" { 
  ami           = var.ami-id
  instance_type = "t2.micro" 
  subnet_id     = var.pvtsub-id
  
  tags = { 
    Name = var.ec2-name
   } 
}

