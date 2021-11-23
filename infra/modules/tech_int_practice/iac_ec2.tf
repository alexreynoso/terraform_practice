resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.eni.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
