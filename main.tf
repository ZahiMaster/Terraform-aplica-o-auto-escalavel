provider "aws" {
    region = "${var.region}"  
}

terraform {
  beckend "s3" {
    #Meu bucket para guardar o tfstate
    bucket = "bucket-terraform-zahi-master"
    key    = "autoescalavel.tfstate"
    region = "${var.region}"
  }
}


resource "aws_vpc" "main" {
    cidr_block = "${var.cidr_block}"

    tags = {
        name = "Terraform"
    }  
}