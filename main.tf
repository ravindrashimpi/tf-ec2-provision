/**
* First step is to select the provider
**/
//Step1
provider "aws" {
  region = "us-east-1"
}

/**
* Provision a new EC2 instance
**/
//Step1-2
resource "aws_instance" "ec2-instance" {
  ami                    = "ami-033b95fb8079dc481"
  instance_type          = "t2.micro"
}
