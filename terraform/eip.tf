# resource "aws_eip" "demo-eip" {
#   vpc = true
# }

resource "aws_eip" "demo-eip1" {
  instance = aws_instance.anand.id
  vpc      = true
}

# #Associate EIP with EC2 Instance
# resource "aws_eip_association" "demo-eip-association" {
#   instance_id   = aws_instance.apache1.id
#   allocation_id = aws_eip.demo-eip.id
# }