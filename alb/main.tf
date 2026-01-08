resource "aws_lb" "this" {
  name               = "day9-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = var.public_subnet_ids
}

output "alb_dns" {
  value = aws_lb.this.dns_name
}
