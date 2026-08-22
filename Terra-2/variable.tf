variable "img_id" {
    type = string
    description = "The AMI ID to use for the EC2 instance"
  default = "ami-035827357e3c7e810"
}

variable "instance_type" {
    type = string
    description = "The instance type to use for the EC2 instance"
  default = "t3.micro"
}

