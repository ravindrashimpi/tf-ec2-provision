terraform {
 required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "3.26.0"
  }
  random {
    source = "hashicorp/random"
    version = "3.0.1"
  }
 }
 required_version = "~> 1.0"
  
 backend "remote" {
  organization = "RaviSOrg"
   
  workspace {
    name = "demo-github-actions"    
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
//Step1-2
resource "aws_instance" "ec2-instance" {
  ami                    = "ami-033b95fb8079dc481"
  instance_type          = "t2.micro"
}
