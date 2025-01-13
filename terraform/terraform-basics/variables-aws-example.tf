resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var-instance_type
}

variable "ami" {
  default = "ami-0edab43b6fa892279"
}
variable "instance_type" {
  default = "t2.micro"
}