output "vm_public_ip" {
  description = "Public Ip of virtual machine"
  value       = azurerm_linux_virtual_machine.myterraformvm.public_ip_address

}