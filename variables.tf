#Variable String
variable "newvariable" {
  type    = "string"
  default = "thisisvariable"
}

#Variable map
variable "maptype" {
  type = "map"

  default = {
    key1 = "val1"
    key2 = "val2"
  }
}

#Variable list
variable "listtype" {
  type    = "list"
  default = ["item1", "item2"]
}

// Output variables

output "first_output" {
  value = "this is the first output"
}

output "aws_cider_subnet1" {
  value = "${aws_subnet.subnet_1.cidr_blocks}"
}
