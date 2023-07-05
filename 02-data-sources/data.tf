data "aws_ami" "centos8" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}

output "ami" {
  value = data.aws_ami.centos8
}

data "aws_instance" "foo" {
  instance_id = "i-05a301314d37f0096"
}

output "public_ip" {
  value = data.aws_instance.foo.public_ip

}

output "private_ip" {
  value = "data.aws_instance.foo.private_ip"
}