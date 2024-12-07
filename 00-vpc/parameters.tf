resource "aws_ssm_parameter" "vpc" {
  name = "/name/vpc_id"
  type = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "public_subnet" {
  name = "/name/public_subnet_id"
  type = "StringList"
  value = join(",", var.public_cidr)
}

resource "aws_ssm_parameter" "private_subnet" {
  name = "/name/private_subnet_id"
  type = "StringList"
  value = join(",", var.private_cidr)
}


resource "aws_ssm_parameter" "database_subnet" {
  name = "/name/database_subnet_id"
  type = "StringList"
  value = join(",", var.database_cidr)
}