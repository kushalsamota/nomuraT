resource "aws_instance" "webec2" {
  instance_type = "t2.micro"
  ami = "ami-0e670eb768a5fc3d4"
}

terraform {
  backend "s3" {
    bucket = "nomurabucket1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "s3-state-lock1"
  }
}
