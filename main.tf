resource "aws_instance" "project" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "project-new"


  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 8
  }

  tags = {
    Name = "project"
  }
}
