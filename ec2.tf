# EC2 VPC-1
data "aws_ami" "ubuntu_vpc-1" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_network_interface" "vpc-1" {
  subnet_id = aws_subnet.public_subnet_1a_vpc-1.id

  tags = {
    Name = "primary_network_interface_vpc-1"
  }
}

resource "aws_instance" "ec2_vpc-1" {
  ami           = data.aws_ami.ubuntu_vpc-1.id
  instance_type = var.instance_type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  network_interface {
    network_interface_id = aws_network_interface.vpc-1.id
    device_index         = 0
  }

  key_name = "vpc-1"

  tags = {
    Name = "vpc-1-ec2"
  }
}

# EC2 VPC-2
data "aws_ami" "ubuntu_vpc-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_network_interface" "vpc-2" {
  subnet_id = aws_subnet.public_subnet_1a_vpc-2.id

  tags = {
    Name = "primary_network_interface_vpc-2"
  }
}

resource "aws_instance" "ec2_vpc-2" {
  ami           = data.aws_ami.ubuntu_vpc-2.id
  instance_type = var.instance_type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  network_interface {
    network_interface_id = aws_network_interface.vpc-2.id
    device_index         = 0
  }

  key_name = "vpc-2"

  tags = {
    Name = "vpc-2-ec2"
  }
}

# EC2 VPC-3
data "aws_ami" "ubuntu_vpc-3" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_network_interface" "vpc-3" {
  subnet_id = aws_subnet.public_subnet_1a_vpc-3.id

  tags = {
    Name = "primary_network_interface_vpc-3"
  }
}

resource "aws_instance" "ec2_vpc-3" {
  ami           = data.aws_ami.ubuntu_vpc-3.id
  instance_type = var.instance_type

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    delete_on_termination = true
  }

  network_interface {
    network_interface_id = aws_network_interface.vpc-3.id
    device_index         = 0
  }

  key_name = "vpc-3"

  tags = {
    Name = "vpc-3-ec2"
  }
}
