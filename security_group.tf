# Security group VPC-1
resource "aws_security_group" "sg_vpc-1" {

  name   = format("%s-security-group", var.vpc-1)
  vpc_id = aws_vpc.vpc_1.id

  egress {
    from_port = 0
    to_port   = 0

    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_vpc-1" {
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 0
  to_port     = 0
  protocol    = "-1"

  security_group_id = aws_security_group.sg_vpc-1.id
  type              = "ingress"
}

# Security group VPC-2
resource "aws_security_group" "sg_vpc-2" {

  name   = format("%s-security-group", var.vpc-2)
  vpc_id = aws_vpc.vpc_2.id

  egress {
    from_port = 0
    to_port   = 0

    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_vpc-2" {
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 0
  to_port     = 0
  protocol    = "-1"

  security_group_id = aws_security_group.sg_vpc-2.id
  type              = "ingress"
}

# Security group VPC-3
resource "aws_security_group" "sg_vpc-3" {

  name   = format("%s-security-group", var.vpc-3)
  vpc_id = aws_vpc.vpc_3.id

  egress {
    from_port = 0
    to_port   = 0

    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_vpc-3" {
  cidr_blocks = ["0.0.0.0/0"]
  from_port   = 0
  to_port     = 0
  protocol    = "-1"

  security_group_id = aws_security_group.sg_vpc-3.id
  type              = "ingress"
}
