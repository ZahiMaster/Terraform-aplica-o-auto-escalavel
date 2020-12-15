

resource "aws_subnet" "public_a" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "192.168.1.0/24"
  availability_zone = "${var.region}a"

  tags = {
    Name = "Public 1a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "192.168.2.0/24"
  availability_zone = "${var.region}b"

  tags = {
    Name = "Public 1b"
  }
}

resource "aws_subnet" "private_a" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "192.168.5.0/23"
  availability_zone = "${var.region}a"

  tags = {
    Name = "Private 1a"
  }
}


resource "aws_subnet" "private_b" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "192.168.8.0/23"
  availability_zone = "${var.region}b"

  tags = {
    Name = "Private 1b"
  }
}
