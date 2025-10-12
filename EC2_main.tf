resource "aws_instance" "my_instance" {
  count                  = var.instance_count
  key_name               = aws_key_pair.mykey.key_name
  security_groups        = [aws_security_group.mygroup.name]
  instance_type          = var.instance_type
  ami                    = var.ami_id
  availability_zone      = var.availability_zone
  iam_instance_profile   = var.iam_instance_profile
  user_data              = file("myfile.text")

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    kms_key_id  = var.kms_key_id
    encrypted   = true
  }


  tags = {
    Name = var.tags
  }
}

