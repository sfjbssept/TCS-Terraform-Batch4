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
    count = 4
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    key_name = "Nishant-Keypair"

    tags = {
        Name = "Nishant machine no ${count.index +1}"
    }


}
