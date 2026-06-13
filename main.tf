#  module "ec2_hesam" {

#    source = "./hmodule/ec2"

#    instance_name = "v011"
#    key_name      = "key-1"
#  }

#  module "ec2_hesam2" {

#    source = "./hmodule/ec2"

#    instance_name = "v011_2"
#    key_name      = "key-1"
#  }

resource "aws_instance" "hesam-1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = 4
  tags = {

    Name       = "hesam_${var.env_name[count.index]}"
    Created_By = local.created_by
  }
}

# resource "aws_instance" "hesam-2" {
# ami           = "ami-0841e304792db6a16"
# instance_type = "t3.micro"
# key_name      = "key-1"
# 
# tags = {
# Name       = "hesam-2"
# Created_By = "terraform"
# }
# }



#resource "aws_instance" "hesam-2" {
#  ami           = "ami-0c13c2049f369d641"
#  instance_type = "t3.micro"
#  key_name      = "testMachine"
#  tags = {
#    Name = "hesam-2"
#Created_By = "terraform"
#  }
### Configuration omitted for brevity ###
#}