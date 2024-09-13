# DevOps Trial Task

This Terraform configuration deploys a Cloud SQL database, a CloudRun service, and configures a Load Balancer in Google Cloud.

## Prerequisites
- Google Cloud account with proper permissions
- Terraform installed locally
- A container image uploaded to Google Container Registry

## Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/Mabdullahofficial/RNS-Trial-Task.git
    cd RNS-Trial-Task
    ```

2. Initialize Terraform:
    ```bash
    terraform init
    ```

3. Create the infrastructure:
    ```bash
    terraform apply
    ```

4. Outputs will show the CloudRun service URL and the Load Balancer IP.

## Clean Up
To destroy all created resources:
```bash
terraform destroy
