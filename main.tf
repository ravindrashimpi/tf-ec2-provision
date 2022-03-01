terraform {
 required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "3.26.0"
  }
 }
 required_version = "~> 1.0"
  
 backend "remote" {
  organization = "RaviSOrg"
   
  workspaces {
    name = "tf-ec2-provision"    
  }
 }
 
  
}

/**
* First step is to select the provider
**/
provider "aws" {
  region = "us-east-1"
}

/**
* Provision a new EC2 instance
**/
# resource "aws_instance" "ec2-instance" {
#   ami                    = "ami-033b95fb8079dc481"
#   instance_type          = "t2.micro"
# }
