terraform {
  backend "s3" {
    bucket = "nishant-tf-state"
    region = "ap-south-1"
    key = "terraform/projectVista.tfstate"
  }
}


provider "aws" {
    region = "ap-south-1"
    access_key = var.access_key
    secret_key = var.secret_key 
}

resource "aws_instance" "Nishant-Ubuntu-instance" {
    count = var.amount
    ami = var.ami
    instance_type = var.instance_type
    key_name = "Nishant-Keypair"
    tags = {
        Name = "Nishant machine no ${count.index +1}"
    }
}