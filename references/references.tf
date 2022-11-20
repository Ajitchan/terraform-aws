provider "aws"{
    region = "eu-west-2"
}


resource "aws_eip" "lb"{
    vpc = true
}

resource "aws_instance" "ec2" {
    ami = "ami-0648ea225c13e0729"
    instance_type =  "t2.micro"
}

resource "aws_eip_association" "ec_asso"{
    instance_id   = aws_instance.ec2.id
    allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "sec_custom" {
  name        = "sec_custom"

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]

  }
}