# Terraform AWS Project

## 📌 Overview

This project provisions AWS resources using Terraform, demonstrating Infrastructure as Code (IaC) best practices.

It includes EC2 instances, an S3 bucket, and DynamoDB table for state locking.

---

## 🚀 Features

- Deploys configurable EC2 instances
- Creates a globally unique S3 bucket with tags
- Uses DynamoDB for Terraform state locking
- Parameterized variables for flexibility
- Clean resource management and easy teardown

---

## 🛠️ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.12  
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured 
- AWS credentials configured (we’ll use the **default profile** option with `~/.aws/credentials`)  

---

## 🔑 Setting up AWS Credentials

1. **Create a Group**  
   - Go to [IAM → User groups](https://console.aws.amazon.com/iamv2/home#/groups)  
   - Click **Create group**  
   - Assign required policies (e.g., `AmazonEC2FullAccess`, `AmazonS3FullAccess`, `AmazonDynamoDBFullAccess`)  

2. **Create a User**  
   - Go to [IAM → Users](https://console.aws.amazon.com/iamv2/home#/users)  
   - Click **Add user**  
   - Enable **Programmatic access**  
   - Add the user to the group created above  
   - Save the **Access Key ID** and **Secret Access Key**  

3. **Run AWS Configure**  
   ```bash
   aws configure
   # Then it will prompt you to provide below details which you got in step 2:
   Access Key ID
   Secret Access Key
   Default region (e.g., ap-south-1)
   Output format (choose one of the options or enter to skip)   

   ```

👉 Important: Use the default profile by:

Not specifying profile in the Terraform provider block

Not hardcoding access keys in Terraform code

---

## 📂 Project Structure

```
terraform-aws/
├── main.tf              # AWS resources (EC2, S3, DynamoDB)
├── outputs.tf           # Terraform outputs (instance IDs, instance bucket name, etc.)
├── providers.tf         # AWS provider configuration
├── README.md            # Project documentation
├── terraform.tfvars     # Input values for the variables
└── variables.tf         # Input variables for the project
```

**Explanation:**

- `providers.tf` → Configures Terraform to use the AWS provider.
- `variables.tf` → Declares input variables (region, instance type, tags, etc.).
- `main.tf` → Defines AWS resources (EC2, S3, DynamoDB).
- `outputs.tf` → Displays useful outputs after `terraform apply`.
- `terraform.tfvars` → User-supplied values for input variables.
- `README.md` → Documentation and usage instructions.

---

## ▶️ Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/WAYNEisBATMAN/terraform-aws.git
   cd terraform-aws
   ```
2. **Initialize Terraform**
   ```bash
   terraform init
   ```
3. **Review the plan**
   ```bash
   terraform plan
   ```
4. **Deploy the infrastructure**
   ```bash
   terraform apply
   ```
   Type 'yes' when prompted for approval or use:
   ```bash
   terraform apply -auto-approve
   ```
5. **Clean up resources**
   ```bash
   terraform destroy
   ```
   Type 'yes' when prompted or use:
   ```bash
   terraform destroy -auto-approve
   ```

---

## 🐛 Troubleshooting

| Issue                        | Solution                                         |
| ---------------------------- | ------------------------------------------------ |
| AWS credentials not found    | Configure AWS CLI or set environment variables   |
| Resource name already exists | Change `bucket_name` or other unique identifiers |
| Permission denied            | Check IAM policies and user permissions          |
| Port not accessible          | Update security group inbound rules              |

---

## 📖 References

- [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
