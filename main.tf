/**
* First step is to select the provider
**/
//Step1
provider "aws" {
  region = "ap-south-1"
}

/**
* Provision a new EC2 instance
**/
//Step1-2
resource "aws_instance" "ec2-instance" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"

  //Step-1-2-3-4
  key_name = "tf-tutorial"

  //Step1-2-3
  tags = {
    Name = "Terraform-EC2-Instance"
  }
}
