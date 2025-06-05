 resource "aws_lb" "nlb" { 
  name               = var.nlb-name
  internal           = false 
  load_balancer_type = "network" 
  subnets            = [var.pubsub-id] 
} 
 
resource "aws_lb_target_group" "tg" { 
  name     = "kvy"
  port     = 80 
  protocol = "TCP"  
  vpc_id   = var.vpc-id
} 
 
resource "aws_lb_target_group_attachment" "tg_attach" { 
  target_group_arn = aws_lb_target_group.tg.arn 
  target_id        = var.tg-id
  port             = 80 
} 
 
resource "aws_lb_listener" "nlb_listener" { 
  load_balancer_arn = aws_lb.nlb.arn 
  port              = 80 
  protocol          = "TCP" 
 
  default_action { 
    type             = "forward" 
    target_group_arn = aws_lb_target_group.tg.arn 
  } 
} 
  