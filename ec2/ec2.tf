# provider
provider "aws" {
    region = "eu-west-2"
}
# resources
resource "aws_instance" "ec2" {
    ami = "ami-0648ea225c13e0729"
    instance_type =  "t2.micro"
}