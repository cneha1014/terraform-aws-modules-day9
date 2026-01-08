resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type           = "t3.micro"
  subnet_id               = var.subnet_id
  vpc_security_group_ids  = [var.ec2_sg_id]

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "day9-ec2"
  }
}
