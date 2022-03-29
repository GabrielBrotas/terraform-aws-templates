


## Basic Commands
**1 - terraform init**
    - User to initialize a working directory containing terraform config files
    - This is the first command that should be run after writing a new terraform configuration
    - Download providers

**2 - terraform validade**
    - Validates the terraform configuration files in that respective directory to ensure they are syntactically valid and internally consistent

**3 - terraform plan**
    - Creates an execution plan
    - Terraform performs a refresh and determines what actions are necessary to achieve te desired state specified in configuration files

**4 - terraform apply**
    - Used to apply the changes required to reach the desired state of he configuration
    - By default, apply scans the current directory for the configuration and applies the changes appropriately

**5 - terraform destroy**
    - Used to destroy the terraform managed infrastructure
    - This will ask for confirmation before destroying