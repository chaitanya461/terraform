resource "aws_vpc" "this" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "192.168.1.0/24" # Adjust CIDR as needed
  availability_zone = "ap-south-1a" # Adjust AZ to match your region

  tags = {
    Name = "${var.vpc_name}-public-a"
  }
}
~
