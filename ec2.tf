provider "aws" {
    region = "eu-west-2"
    access_key = "AKIA2SV4SDECVVUW274T"
    secret_key = "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"
}

resource "aws_instance" "ec2" {
    ami = "ami-0648ea225c13e0729"
    instance_type =  "t2.micro"
}