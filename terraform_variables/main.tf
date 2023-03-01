resource "aws_instance" "demo1-instance-apache" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_pair
  subnet_id     = var.subnet_id
  availability_zone = var.az

  security_groups = [aws_security_group.apache-sg.id]
  user_data       = file("apache.sh")
  tags = {
    Name = "apache"
  }
}


