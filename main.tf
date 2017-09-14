#Testing Terraform
data "template_file" "init" {
  template = "${file("bootstrap/bootstrap.sh")}"
}
resource "aws_instance" "test"{
  ami = "ami-c998b6b2"
  instance_type = "t2.micro"
  user_data = "${data.template_file.init.rendered}"
  key_name = "jmgreg31"
  iam_instance_profile = "jmgreg31-access"
  tags {
    Name = "Splunk_jmgreg31"
  }
}
