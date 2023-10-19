resource "aws_instance" "bastion" {
  ami           = var.ami_id
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = var.key_name
  associate_public_ip_address = true  

  vpc_security_group_ids = [
    aws_security_group.bastion_sg.id
  ]

  tags = {
    Name = "BastionHost"
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = "bastion_sg"
  description = "Security group for the Bastion Host"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
