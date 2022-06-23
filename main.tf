terraform {
 required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "3.26.0"
  }
 }
 required_version = "~> 1.0"
  
 backend "remote" {
 organization = "SailuORG"
   
  workspaces {
    name = "tf-ec2-provision"    
  }
 }
 
  
}

/**
* First step is to select the provider
**/
provider "aws" {
  region = "us-west-1"
}

/**
* Provision a new EC2 instance
**/
 /*
 * Changes done by Ravi on his branch
*/
resource "aws_instance" "ec2-instance" {
  ami                    = "ami-048ff3da02834afdc"
  instance_type          = "t2.micro"
}
