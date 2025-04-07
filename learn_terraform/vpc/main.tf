#1 vpc, 1 subnet, and 1 security group

resource "aws_vpc" "kobevpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
 
  tags = {
    Name = "kobevpc"
  }
}

  
resource "aws_subnet" "kobesubnet" {
  vpc_id            = aws_vpc.kobevpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "kobesubnet"
  }
}

resource "aws_security_group" "kobesg" {
  name        = "kobesg"
  description = "Allow inbound traffic"
  vpc_id      = aws_vpc.kobevpc.id


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "kobesg"
  }
}