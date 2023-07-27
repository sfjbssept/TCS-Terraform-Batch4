terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

provider "aws" {

  region = "ap-south-1"

}


resource "aws_instance" "Nishant-Ubuntu-instance" {
    count = var.amount
    ami = var.ami
    instance_type = var.instance_type
    // 1. create variables for count ( number), ami ( string), instance_type ( string)
    // 2. create 2 tfvars ( dev.tfvars & prod.tfvars)
    // in dev.tf vars count = 1, instance_type = t2.micro
    // in prod.tf vars count= 2, instance_type= t3.micro
    
    key_name = "Nishant-Keypair"

    tags = {
        Name = "Nishant machine no ${count.index +1}"
    }


}
