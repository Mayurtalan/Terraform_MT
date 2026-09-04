


resource "aws_instance" "name" {
  ami           = var.img_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.public_security.name]
  tags = {
    Name = "MyInstance20"
  }
}


data "aws_vpc" "default" {
  default = true
}


resource "aws_security_group" "public_security" {
  name        = "security group"
  description = "Allow inbound traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.8/32"]

  }


  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  
  }

 tags = {
    Name = "web-sg"
  }

}






























# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_ssh"
#   description = "Allow SSH inbound traffic"


#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }


# }