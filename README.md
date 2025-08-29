# AWS-Infrastructure-Automation-with-Terraform
Infrastructure as Code (IaC) project using Terraform to provision and manage AWS resources such as EC2 instances, VPC, and Security Groups. Includes reusable Terraform configurations (main.tf, variables.tf, and outputs.tf) for creating a secure and scalable environment.


AWS Infrastructure Automation with Terraform 🚀

This project demonstrates how to automate the provisioning of AWS infrastructure using Terraform.

Features

Provision EC2 instances with customizable instance type and AMI.

Create a VPC.

Configure Security Groups with inbound and outbound rules.

Use Terraform output blocks to fetch and display public and private IP addresses directly in the CLI.

Parameterized setup using variables.tf for reusability and environment flexibility.

Tech Stack

Terraform

AWS (EC2, VPC, Security Groups, KeyPair)

AWS CLI

Usage
# Initialize Terraform
terraform init  

# Preview infrastructure changes
terraform plan  

# Apply changes (provision resources)
terraform apply  

# Destroy infrastructure
terraform destroy  

# module link
https://registry.terraform.io/browse/modules

