#.........................
#ROUTE PUBLIQUE
#.........................
resource "aws_route_table" "public_rt" {
	vpc_id = var.vpc_id

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = var.igw_id
	}

	tags = {
		Name = "ouete-public-rt"
	}
}


resource "aws_route_table_association" "public_a" {

  subnet_id      = var.public_subnets[0]
  route_table_id = aws_route_table.public_rt.id

}

resource "aws_route_table_association" "public_b" {

  subnet_id      = var.public_subnets[1]
  route_table_id = aws_route_table.public_rt.id

}

resource "aws_route_table_association" "public_c" {

  subnet_id      = var.public_subnets[2]
  route_table_id = aws_route_table.public_rt.id

}

#.............................................................................................
#IP ELASTIC POUR LE NAT
#.............................................................................................
resource "aws_eip" "nat_eip" {

	domain = "vpc"

	tags = {
		Name = "ouete-nat-eip"
	}
}


#..............................................................................................
# GATEWAY NAT
#.............................................................................................
resource "aws_nat_gateway" "nat" {
	
	allocation_id = aws_eip.nat_eip.id
	subnet_id     = var.public_subnets[0]

	tags = {
		Name = "ouete-nat"
	}
}




#.............................................................................................
#TABLE ROUTE PRIVEE
#.............................................................................................
resource "aws_route_table" "private_rt" {

  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "ouete-private-rt"
  }

}


resource "aws_route_table_association" "private_a" {

  subnet_id      = var.private_subnets[0]
  route_table_id = aws_route_table.private_rt.id

}

resource "aws_route_table_association" "private_b" {

  subnet_id      = var.private_subnets[1]
  route_table_id = aws_route_table.private_rt.id

}

resource "aws_route_table_association" "private_c" {

  subnet_id      = var.private_subnets[2]
  route_table_id = aws_route_table.private_rt.id

}


#..............................................................................................#TABLE ROUTE DATA
#..............................................................................................
resource "aws_route_table" "data_rt" {

  vpc_id = var.vpc_id

  tags = {
    Name = "ouete-data-rt"
  }

}


resource "aws_route_table_association" "data_a" {

  subnet_id      = var.data_subnets[0]
  route_table_id = aws_route_table.data_rt.id

}

resource "aws_route_table_association" "data_b" {

  subnet_id      = var.data_subnets[1]
  route_table_id = aws_route_table.data_rt.id

}

resource "aws_route_table_association" "data_c" {

  subnet_id      = var.data_subnets[2]
  route_table_id = aws_route_table.data_rt.id

}


