output "devops_public_ip" {
  description = "Public IP address of the devop controller."
  value       = azurerm_public_ip.devops_public_ip.ip_address
}
