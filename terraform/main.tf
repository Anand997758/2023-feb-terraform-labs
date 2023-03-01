resource "aws_instance" "anand" {
  ami           = "ami-02d8b16971a4906a0"
  instance_type = "t2.micro"
  key_name      = "anand"
  availability_zone = "ap-northeast-3a"
  subnet_id     = "subnet-0f0f35e3bac0bb594"

  security_groups = [aws_security_group.apache-sg.id]
  user_data       = <<EOF
  #!/bin/bash
  yum update -y
  yum install httpd -y
  systemctl start httpd
  systemctl enable httpd

  EOF

  tags = {
    Name = "apache"
  }
}