# Terraform AWS Project

## 📌 Overview

This project provisions AWS resources using Terraform, demonstrating Infrastructure as Code (IaC) best practices. It includes EC2 instances, an S3 bucket, and DynamoDB for state locking.

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
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) configured
- AWS credentials set up (via environment variables or `~/.aws/credentials`)

create group
create user
aws configure
for this to work as default profile dont add profile in provider block. or the access and secret keys.


---

## 📂 Project Structure

```
terraform-aws/
├── main.tf              # AWS resources (EC2, S3, DynamoDB)
├── outputs.tf           # Terraform outputs (instance IDs, bucket name, etc.)
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
