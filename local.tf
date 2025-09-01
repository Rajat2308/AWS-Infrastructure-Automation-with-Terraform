locals {
  instances = {
    myinstance1 = {
      instance_type     = "t2.micro"
      availability_zone = "ap-east-1a"
      name_tag          = "InstanceOne"
    }
    myinstance2 = {
      instance_type     = "t2.medium"
      availability_zone = "ap-east-1b"
      name_tag          = "InstanceTwo"
    }
  }
}


for_each = local.instances

  instance_type        = each.value.instance_type
  availability_zone    = each.value.availability_zone

