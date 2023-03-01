resource "aws_ami_from_instance" "apache-ami-backup" {
  name               = "apache-ami-backup"
  source_instance_id = "i-01b5bf007406780b0"
}