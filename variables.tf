variable "instance_count" {
  description = "Total number of instances to be created"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for launching EC2 instances"
  type        = string
  default     = "ami-0327518d48"
}

variable "availability_zone" {
  description = "Availability Zone where the EC2 will be launched"
  type        = string
  default     = "ap-east-1a"
}

variable "iam_instance_profile" {
  description = "IAM role to attach with server"
  type        = string
  default     = "AWSAdministratorRole"
}

variable "kms_key_id" {
  description = "The KMS Key ID to use for encrypting the volumes"
  type        = string
  default     = "d67f1445-81aa-454a-aabb-c52cfc084c89"
}

variable "root_volume_size" {
  description = "Root volume size (in GB)"
  type        = number
  default     = 15
}

variable "root_volume_type" {
  description = "Root volume type"
  type        = string
  default     = "gp3"
}

variable "tags" {
  description = "Name tag for the EC2 instances"
  type        = string
  default     = "my_server"
}
