#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.76.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Stage   = "VPC-A-Virginia-Prod"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#These are for private

resource "aws_subnet" "private-us-east-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.76.11.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-us-east-1a"
    Service = "application1"
    Stage   = "VPC-A-Virginia-Prod"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-us-east-1d" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.75.14.0/24"
  availability_zone       = "us-east-1d"
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-us-east-1d"
    Service = "application1"
    Stage   = "VPC-A-Virginia-DEV"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-us-east-1f" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.74.16.0/24"
  availability_zone       = "us-east-1f"
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-us-east-1f"
    Service = "application1"
    Stage   = "VPC-A-Virginia-TEST"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}



