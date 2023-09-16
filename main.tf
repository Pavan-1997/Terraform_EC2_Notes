provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-053b0d53c279acc90"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-04ad94c346eb65446"
    key_name = "AWSKEY_Terraform"
    tags = {
        Name = "Terraform-Ubuntu"  # Replace with your desired instance name
    }
}