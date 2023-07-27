
variable "sg_group" {
    type = list
   default = ["prod1sg","dev_2sg","highazSG","publicsg"]
}


output "sg_groups" {
    # value ="${join(" , ",var.sg_group)}"
    value = "${upper(var.sg_group[0])}"
}