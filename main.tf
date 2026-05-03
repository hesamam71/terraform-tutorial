resource "aws_instance" "herts1" {
  ami           = "ami-0aa21e8848eea555b"
  instance_type = "t3.micro"

  tags = {
    Created_By = "terraform"
  }
}