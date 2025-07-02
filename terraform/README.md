# DevOps System on Azure (Terraform)

This project provisions a foundational DevOps system on Microsoft Azure using Terraform. It deploys a VM with Docker and Jenkins (in Docker) as a starting point for a scalable CI/CD environment.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed and authenticated (`az login`)
- An Azure subscription
- SSH key pair (default: `~/.ssh/id_rsa.pub`)

## Deployment Steps

1. **Clone the repository** (if not already):
   ```sh
   git clone <your-repo-url>
   cd devops-system/terraform
   ```

2. **Login to Azure** (if not already):
   ```sh
   az login
   ```

3. **Initialize Terraform:**
   ```sh
   terraform init
   ```

4. **(Optional) Review/Customize Variables:**
   Edit `variables.tf` or use `-var` flags to override defaults (e.g., location, VM size, SSH key path).

5. **Preview the plan:**
   ```sh
   terraform plan
   ```

6. **Apply the configuration:**
   ```sh
   terraform apply
   ```
   - Type `yes` to confirm when prompted.

7. **Get the Jenkins Public IP:**
   After apply, Terraform will output the public IP address. Access Jenkins at:
   ```
   http://<public-ip>:8080
   ```

8. **First Jenkins Login:**
   - SSH into the VM:
     ```sh
     ssh <admin_username>@<public-ip>
     ```
   - Get the Jenkins initial admin password:
     ```sh
     sudo docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
     ```
   - Use this password to unlock Jenkins in your browser.

## Clean Up
To destroy all resources:
```sh
terraform destroy
```

---

For issues or improvements, open an issue or PR.
