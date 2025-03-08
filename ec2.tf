resource "aws_instance" "web" {
  ami             = "ami-07d2649d67dbe8900"  
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main_subnet.id
  security_groups = [aws_security_group.main_sg.name]
  key_name        = "aws_proj2"  

  tags = {
    Name = "WebServer"
  }
}
