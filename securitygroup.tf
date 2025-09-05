resource "aws_security_group" "mygroup" {
  name        = "mysg"
  description = "This is a security group created by Terraform."
  vpc_id      = aws_default_vpc.default.id

  tags = {
    Name = "mysg"
  }

  # Ingress (Inbound rules)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress (Outbound rules)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}


