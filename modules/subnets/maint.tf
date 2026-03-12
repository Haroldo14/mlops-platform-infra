resource "aws_subnet" "public_a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "ouete-public-a"
  }
}

resource "aws_subnet" "private_a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "ouete-private-a"
  }
}

resource "aws_subnet" "data_a" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "ouete-data-a"
  }
}


resource "aws_subnet" "public_b" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "eu-west-1b"
  map_public_ip_on_launch = true


  tags = {
    Name = "ouete-public-b"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "ouete-private-b"
  }
}

resource "aws_subnet" "data_b" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "ouete-data-b"
  }
}



resource "aws_subnet" "public_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.7.0/24"
  availability_zone = "eu-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "ouete-public-c"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.8.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name = "ouete-private-c"
  }
}

resource "aws_subnet" "data_c" {
  vpc_id            = var.vpc_id
  cidr_block        = "10.0.9.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name = "ouete-data-c"
  }
}



