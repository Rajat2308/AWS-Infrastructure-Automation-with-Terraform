terraform.tf------ required provider


 		terraform {
			required_provider {
				aws = {
					source = "hashicrop/aws"
					version = "5.91.0"
				}
			}
		

		# for locking state file ---

			backend "s3" {
		
				bucket = "My_bucket"
				key = "terraform.tfstate"
				region = "us-east-2"
				dynamodb_table = "My_DB"
			}
		}	

when you change the terraform block then you have to run first Terraform init cmd.	
--------------------------
aws s3 bucket----> s3.tf

		resource "aws_s3_bucket" "Remote_s3" {
			bucket = "My_bucket"

			tags ={
				Name = "My_bucket"
				
			}
		}



----------------------------------------------------------------------------------------------------------------------------------------------------------


DynamoDB ------> dynamodb.tf


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "My_DB"
  billing_mode   = "PAY_PER_REQUEST"
  # read_capacity  = 20        (optional)    
  # write_capacity = 20        (optional)
  hash_key       = "LockId"
  

  attribute {
    name = "LockId"
    type = "S"
  }

 
  tags = {
    Name        = "My_DB"
    Environment = "Dev"
  }
}

# provisioned = It's means that it will always active .
# pay Per requiest = It's means that it will only pay on the bases of request. 
-----------------------------------------------------------------------------------------------------------------------------------------------------------

provider.tf --->

		provider "aws" {
			region = "us-east-2"
		}

-----------------------------------------------------------------------------------------------------------------------------------------------------------
