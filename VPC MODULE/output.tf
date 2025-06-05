output "vpc_id" {
    value = aws_vpc.VPC.id
  
}

output "pubsub-id" {
    value = aws_subnet.pub-sub.id
  
}
output "pvtsub-id" {
    value = aws_subnet.pub-sub.id
  
}