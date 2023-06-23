resource "aws_network_interface" "web" {
  subnet_id       = var.subnet_id
  security_groups = var.security_groups
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.web.id
    device_index         = var.device_index
  }

    tags = {
    Name = var.instance_name
  }
}

# resource "aws_network_interface" "web" {
#   subnet_id       = "subnet-03ddf0d4fd589ae9a"
#   security_groups = ["sg-0dd3a367880737f7a"]
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"

#   network_interface {
#     network_interface_id = aws_network_interface.web.id
#     device_index         = 0
#   }

#   tags = {
#     Name = "altin.hykolli"
#   }
# }
