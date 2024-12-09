# Terraform AWS Example Project

This project demonstrates a basic Terraform configuration for deploying web app hosted on AWS with terraform plan.

## Project Structure

- `main.tf`: Main Terraform configuration file
- `variables.tf`: Variable definitions
- `provider.tf`: Provider provider version constraints
- `.github/workflows/terraform-plan.yml`: GitHub Actions workflow for Terraform planning

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account and [AWS CLI](https://aws.amazon.com/cli/) configured
- S3 bucket for storing Terraform state (update the bucket name in `main.tf`)

## Usage

1. Clone this repository
2. Update the S3 backend configuration in `main.tf` with your bucket and DynamoDB table names
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Review the planned changes:
   ```
   terraform plan
   ```
5. Apply the changes:
   ```
   terraform apply
   ```

## Important Notes

- Ensure that you have the necessary permissions to create and manage the specified AWS resources.
- Remember to destroy the resources when they are no longer needed:
  ```
  terraform destroy
  ```
- The GitHub Actions workflow will run Terraform plan on pull requests to the main branch.

## Security

- Sensitive information should be stored securely (e.g., using GitHub Secrets for CI/CD).
- Regularly update the provider and module versions to ensure you have the latest security patches.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
