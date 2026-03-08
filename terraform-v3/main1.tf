provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server_v3" {
  # This AMI is for Amazon Linux 2 (Double check your region's AMI)
  ami           = "ami-05024c2628f651b80" 
  
  # Upgrading from t2.micro to t3.small for better performance
  instance_type = "t3.small"               
  
  key_name      = "ultimate-key-v3-1" # Make sure this .pem file exists in your AWS account! 

  tags = {
    Name = "DevOps-Lab-Server-V3" 
  }
}