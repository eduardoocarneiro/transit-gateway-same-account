# Configurando o transit gateway
resource "aws_ec2_transit_gateway" "tgw-vpcs" {
  description = "Transit Gateway for VPCs"
}

# Transit gateway attachment VPC-1
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment_vpc-1" {
  subnet_ids         = [aws_subnet.public_subnet_1a_vpc-1.id, aws_subnet.public_subnet_1c_vpc-1.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw-vpcs.id
  vpc_id             = aws_vpc.vpc_1.id

  tags = {
    Name = format("%s-transit-gateway", var.vpc-1)
  }

}

# Transit gateway attachment VPC-2
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment_vpc-2" {
  subnet_ids         = [aws_subnet.public_subnet_1a_vpc-2.id, aws_subnet.public_subnet_1c_vpc-2.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw-vpcs.id
  vpc_id             = aws_vpc.vpc_2.id

  tags = {
    Name = format("%s-transit-gateway", var.vpc-2)
  }

}

# Transit gateway attachment VPC-3
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment_vpc-3" {
  subnet_ids         = [aws_subnet.public_subnet_1a_vpc-3.id, aws_subnet.public_subnet_1c_vpc-3.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw-vpcs.id
  vpc_id             = aws_vpc.vpc_3.id

  tags = {
    Name = format("%s-transit-gateway", var.vpc-3)
  }
}
