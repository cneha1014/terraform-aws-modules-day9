resource "aws_network_acl" "this" {
  vpc_id = var.vpc_id
}

resource "aws_network_acl_rule" "http" {
  network_acl_id = aws_network_acl.this.id
  rule_number    = 100
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}
