resource "aws_instance" "webec2" {
  instance_type = "t2.micro"
  ami = "ami-0e670eb768a5fc3d4"
}
