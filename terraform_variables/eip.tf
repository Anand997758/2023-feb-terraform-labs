# resource "aws_eip" "demo1-eip" {
#   vpc = true
# }

resource "aws_eip" "demo1-eip" {
  instance = aws_instance.demo-instance-apache.id
  vpc      = true
}

#Associate EIP with EC2 Instance
# resource "aws_eip_association" "demo1-eip-association" {
#   instance_id   = aws_instance.demo1-instance-apache.id
#   allocation_id = aws_eip.demo1-eip.id
# }