variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "devops-rg"
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "westeurope"
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key."
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}
