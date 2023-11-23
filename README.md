# Terraform AWS EC2 Instance Provisioning

This project uses Terraform to provision an AWS EC2 instance. It's a DevOps project focusing on Infrastructure as Code (IaC) for automating the creation of AWS resources.

## Prerequisites

Before you begin, ensure you have the following:

- Terraform installed: [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- AWS account credentials configured: [AWS Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## Project Structure

- `ec2_main.tf`: Main Terraform resource code for provisioning the EC2 instance.
- `providers.tf`: AWS provider configuration.
- `variables.tf`: Definition of variables used in the Terraform code.

## Usage

1. Clone the repository:

   ```
   git clone https://github.com/HesterHDM/Terraform_AWS.git
   cd Terraform_AWS
Initialize the Terraform working directory:



terraform init
Preview the changes:



terraform plan
Apply the Terraform configuration:



terraform apply
Enter 'yes' when prompted.

The EC2 instance will be provisioned according to the specified configuration.

Variables
Update the values in variables.tf to customize your EC2 instance configuration.
Common variables include aws_region, instance_type, ami_id, etc.

Clean Up
To destroy the created resources after testing:



terraform destroy
Enter 'yes' when prompted.

Contributing
If you find issues or have improvements, feel free to open an issue or create a pull request.

License
This project is licensed under the MIT License - see the [LICENSE file](https://github.com/HesterHDM/Terraform_AWS/blob/main/LICENSE) for details.
