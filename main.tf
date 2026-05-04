resource "aws_instance" "hesam-1" {
  ami           = "ami-0841e304792db6a16"
  instance_type = "t3.micro"
  key_name      = "key-1"

  tags = {
    Name       = "hesam"
    Created_By = "terraform"
  }
}