# Terraform Project

This project is a Terraform configuration for deploying an Amazon ECS (Elastic Container Service) application. It is organized into multiple files and modules for better maintainability and clarity.

## Project Structure

```
terraform-project
├── modules
│   └── ecs
│       ├── main.tf            # Main configuration for the ECS module
│       ├── outputs.tf         # Outputs for the ECS module
│       └── variables.tf       # Input variables for the ECS module
├── provider.tf                # AWS provider configuration
├── ecs_cluster.tf             # ECS cluster resource definition
├── ecs_task_definition.tf      # ECS task definition resource
├── ecs_service.tf             # ECS service resource definition
└── README.md                  # Project documentation
```

## Requirements

- Terraform 0.12 or later
- AWS account with appropriate permissions

## Setup Instructions

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd terraform-project
   ```

2. **Configure AWS Credentials**:
   Ensure your AWS credentials are configured. You can set them up using the AWS CLI or by creating a `~/.aws/credentials` file.

3. **Initialize Terraform**:
   Run the following command to initialize the Terraform project:
   ```
   terraform init
   ```

4. **Plan the Deployment**:
   Generate an execution plan with:
   ```
   terraform plan
   ```

5. **Apply the Configuration**:
   Deploy the resources by running:
   ```
   terraform apply
   ```

6. **Accessing the ECS Service**:
   After deployment, you can access the ECS service using the public IP or DNS name of the load balancer created by the ECS service.

## Cleanup

To remove all resources created by this project, run:
```
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.