resource "aws_ami_from_instance" "apache-ami-backup" {
  name               = "apache-ami-backup"
  source_instance_id = var.source_instance_id
}