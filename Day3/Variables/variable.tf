variable "ami" {
    type = string
    default = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}


variable "amount" {
    default = 0
    type = number
}
variable "isDone" {
  default = false
  type = bool
}
output "printami" {
  value = "My AMI is  ${var.ami}, and the instance type is ${var.instance_type}, we are creating ${var.amount} instances , is created ? ${var.isDone}" 
}




variable "sg_group" {
    type = list
    default = ["prod1sg","dev_2sg","highazSG","publicsg"]
}

output "sg_groups" {
    value = "I am using ${var.sg_group[1]}"
  
}

variable "az" {
    type = map  
    default = {
        mumbai = 3
        North_v = 4 
    }
}
variable "region" {
    type = string 
}
output "AzInRegion" {
value = "the selected region is ${var.region} and there are ${lookup(var.az, "${var.region}")} AZ in this region"
}
