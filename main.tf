#Testing Terraform
resource "aws_instance" "test"{
  ami = "ami-c998b6b2"
  instance_type = "t2.micro"
}
