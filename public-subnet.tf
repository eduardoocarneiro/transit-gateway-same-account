# Subnets VPC-1
resource "aws_subnet" "public_subnet_1a_vpc-1" {
  vpc_id = aws_vpc.vpc_1.id

  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sa", var.aws_region)

  tags = {
    Name = format("%s-public-1a", var.vpc-1)
  }
}

resource "aws_subnet" "public_subnet_1c_vpc-1" {
  vpc_id = aws_vpc.vpc_1.id

  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sc", var.aws_region)

  tags = {
    Name = format("%s-public-1c", var.vpc-1)
  }
}

resource "aws_route_table_association" "public_1a_vpc-1" {
  subnet_id      = aws_subnet.public_subnet_1a_vpc-1.id
  route_table_id = aws_route_table.igw_route_table-vpc-1.id
}

resource "aws_route_table_association" "public_1c_vpc-1" {
  subnet_id      = aws_subnet.public_subnet_1c_vpc-1.id
  route_table_id = aws_route_table.igw_route_table-vpc-1.id
}

# Subnets VPC-2
resource "aws_subnet" "public_subnet_1a_vpc-2" {
  vpc_id = aws_vpc.vpc_2.id

  cidr_block              = "172.31.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sa", var.aws_region)

  tags = {
    Name = format("%s-public-1a", var.vpc-2)
  }
}

resource "aws_subnet" "public_subnet_1c_vpc-2" {
  vpc_id = aws_vpc.vpc_2.id

  cidr_block              = "172.31.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sc", var.aws_region)

  tags = {
    Name = format("%s-public-1c", var.vpc-2)
  }
}

resource "aws_route_table_association" "public_1a_vpc-2" {
  subnet_id      = aws_subnet.public_subnet_1a_vpc-2.id
  route_table_id = aws_route_table.igw_route_table-vpc-2.id
}

resource "aws_route_table_association" "public_1c_vpc-2" {
  subnet_id      = aws_subnet.public_subnet_1c_vpc-2.id
  route_table_id = aws_route_table.igw_route_table-vpc-2.id
}

# Subnets VPC-3
resource "aws_subnet" "public_subnet_1a_vpc-3" {
  vpc_id = aws_vpc.vpc_3.id

  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sa", var.aws_region)

  tags = {
    Name = format("%s-public-1a", var.vpc-3)
  }
}

resource "aws_subnet" "public_subnet_1c_vpc-3" {
  vpc_id = aws_vpc.vpc_3.id

  cidr_block              = "192.168.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = format("%sc", var.aws_region)

  tags = {
    Name = format("%s-public-1c", var.vpc-3)
  }
}

resource "aws_route_table_association" "public_1a_vpc-3" {
  subnet_id      = aws_subnet.public_subnet_1a_vpc-3.id
  route_table_id = aws_route_table.igw_route_table-vpc-3.id
}

resource "aws_route_table_association" "public_1c_vpc-3" {
  subnet_id      = aws_subnet.public_subnet_1c_vpc-3.id
  route_table_id = aws_route_table.igw_route_table-vpc-3.id
}
