provider "aws"{
    region = "eu-west-2"
}

resource "aws_eip" "lb"{
    vpc = true
}
output "eip"{
    value = aws_eip.lb
}

resource "aws_s3_bucket" "s3" {
    bucket = "ajit-7777777770"
}

output "s3bucket"{
    value = aws_s3_bucket.s3.arn

}