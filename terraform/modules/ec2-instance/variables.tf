variable "subnet_id" {
 type = string
}

variable "security_groups" {
  type = list(string)
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "device_index" {
  type = number
}

variable "environment" {
  type = string
}



# variable = "subnet-03ddf0d4fd589ae9a"
# var.security_groups = "sg-0dd3a367880737f7a"
# var.instance_type = "t2.micro"
# var.instance_name = "altin.hykolli"
# var.device_index - "0" 
