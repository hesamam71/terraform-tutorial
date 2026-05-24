# variable "ami_id" { default = "ami-0841e304792db6a16" }
# variable "instance_type" { default = "t3.micro" }
# variable "key_name" { default = "key-1" }
# variable "machine_name" { default = "hesam" }


variable "ami_id" {
  default     = "ami-0841e304792db6a16"
  type        = string
  description = "This is ami id for the machine"
}
variable "instance_type" {}
variable "key_name" {}
variable "machine_name" {}