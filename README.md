# Terraform Project
This project is a Terraform configuration for deploying an Amazon ECS (Elastic Container Service) application. It is organized into multiple files and modules for better maintainability and clarity.

## English Version

### Project Overview

This Terraform project sets up an Amazon ECS service running an `httpd` container behind a load balancer. The infrastructure is defined using Terraform and includes a CI/CD pipeline using AWS services.

### Key Features

- **ECS Cluster**: Deploys an ECS cluster to run the `httpd` container.
- **Load Balancer**: Configures an Application Load Balancer (ALB) to distribute traffic to the ECS service.
- **CI/CD Pipeline**: Implements a CI/CD pipeline using AWS CodePipeline, CodeBuild, and CodeDeploy for automated deployments.

## Versão em Português

### Visão Geral do Projeto

Este projeto Terraform configura um serviço Amazon ECS executando um contêiner `httpd` atrás de um balanceador de carga. A infraestrutura é definida usando Terraform e inclui um pipeline CI/CD usando serviços da AWS.

### Principais Características

- **Cluster ECS**: Implanta um cluster ECS para executar o contêiner `httpd`.
- **Balanceador de Carga**: Configura um Application Load Balancer (ALB) para distribuir o tráfego para o serviço ECS.
- **Pipeline CI/CD**: Implementa um pipeline CI/CD usando AWS CodePipeline, CodeBuild e CodeDeploy para implantações automatizadas.

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