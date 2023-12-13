# Internet gateway VPC-1
resource "aws_internet_gateway" "igw-vpc-1" {
  vpc_id = aws_vpc.vpc_1.id

  tags = {
    Name = format("%s-internet-gateway", var.vpc-1)
  }
}

resource "aws_route_table" "igw_route_table-vpc-1" {
  vpc_id = aws_vpc.vpc_1.id

  tags = {
    Name = format("%s-public-route", var.vpc-1)
  }
}

resource "aws_route" "public_internet_access-vpc-1" {
  route_table_id         = aws_route_table.igw_route_table-vpc-1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw-vpc-1.id
}

resource "aws_route" "vpc-1_vpc-2" {
  route_table_id         = aws_route_table.igw_route_table-vpc-1.id
  destination_cidr_block = "172.31.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}

resource "aws_route" "vpc-1_vpc-3" {
  route_table_id         = aws_route_table.igw_route_table-vpc-1.id
  destination_cidr_block = "192.168.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}

# Internet gateway VPC-2
resource "aws_internet_gateway" "igw-vpc-2" {
  vpc_id = aws_vpc.vpc_2.id

  tags = {
    Name = format("%s-internet-gateway", var.vpc-2)
  }
}

resource "aws_route_table" "igw_route_table-vpc-2" {
  vpc_id = aws_vpc.vpc_2.id

  tags = {
    Name = format("%s-public-route", var.vpc-2)
  }
}

resource "aws_route" "public_internet_access-vpc-2" {
  route_table_id         = aws_route_table.igw_route_table-vpc-2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw-vpc-2.id
}

resource "aws_route" "vpc-2_vpc-1" {
  route_table_id         = aws_route_table.igw_route_table-vpc-2.id
  destination_cidr_block = "10.0.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}

resource "aws_route" "vpc-2_vpc-3" {
  route_table_id         = aws_route_table.igw_route_table-vpc-2.id
  destination_cidr_block = "192.168.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}

# Internet gateway VPC-3
resource "aws_internet_gateway" "igw-vpc-3" {
  vpc_id = aws_vpc.vpc_3.id

  tags = {
    Name = format("%s-internet-gateway", var.vpc-3)
  }
}

resource "aws_route_table" "igw_route_table-vpc-3" {
  vpc_id = aws_vpc.vpc_3.id

  tags = {
    Name = format("%s-public-route", var.vpc-3)
  }
}

resource "aws_route" "public_internet_access-vpc-3" {
  route_table_id         = aws_route_table.igw_route_table-vpc-3.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw-vpc-3.id
}

resource "aws_route" "vpc-3_vpc-1" {
  route_table_id         = aws_route_table.igw_route_table-vpc-3.id
  destination_cidr_block = "10.0.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}

resource "aws_route" "vpc-3_vpc-2" {
  route_table_id         = aws_route_table.igw_route_table-vpc-3.id
  destination_cidr_block = "172.31.0.0/16"
  transit_gateway_id     = aws_ec2_transit_gateway.tgw-vpcs.id
}
