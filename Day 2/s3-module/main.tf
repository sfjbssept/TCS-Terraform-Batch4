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

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "nishantterraform"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = false
  }
}

resource "aws_sqs_queue" "nishant_queue" {
  name                        = "nishant-terraform-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}