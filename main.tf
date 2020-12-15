provider "aws" {
    region = "${var.region}"  
}

resource "aws_vpc" "main" {
    cidr_block = "${var.cidr_block}"

    tags = {
        name = "Terraform"
    }  
}

resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.main.id}"

    tags = {
        Name = "Terraform"
    }  
}