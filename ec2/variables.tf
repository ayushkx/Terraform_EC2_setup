variable "vpc_id" {
  description = "The VPC ID"
  default  = "your_vpc_id"
}

variable "security_id" {
     description = " security id " 
     default  = "your_security_group_id"
}

variable "instance_name" {
        description = "Name of the instance to be created"
        default = "test"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "Your_subnet_id"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-04a81a99f5ec58529"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}



