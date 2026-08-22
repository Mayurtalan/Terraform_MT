resource "aws_instance" "name" {
  ami = var.img_id
  instance_type = var.instance_type

  
}