#VPC anlegen
resource "aws_vpc" "environment-example-two" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "terraform-aws-vpc-example"
  }
}

#Subnet anlegen
resource "aws_subnet" "subnet_1" {
  cidr_block        = "${cidrsubnet(aws_vpc.environment-example-two.cidr_block, 3, 1)}"
  vpc_id            = "${aws_vpc.environment-example-two.id}"
  availability_zone = "eu-central-1a"
}
