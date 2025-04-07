#ec2

resource "aws_instance" "kobeec2" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  subnet_id     = var.sn
  security_groups = [var.sg]
  associate_public_ip_address = true
  tags = {
    Name = "kobeec2"
  }
  
  
}