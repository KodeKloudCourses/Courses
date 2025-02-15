resource "aws_instance" "webserver" {
  ami = "ami-0edab43b6fa892279"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo Instance ${aws_instance.webserver.public_ip} Created! > /tmp/instance_state.txt"
  }
  provisioner "local-exec" {
    when = destroy
    command = "echo Instance ${aws_instance.webserver.public_ip} Destroyed! > /tmp/instance_state.txt"
  }

}