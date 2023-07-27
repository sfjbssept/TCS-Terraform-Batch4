variable ami {
    type = string
}

variable "instance_type" {
    type = string 
}
output "Instance_details" {

    value = "Instance will be created with the AMI ${var.ami} , The instance size will be ${var.instance_type}"
  
}