import subprocess

def configure_network():
    print("Configuring Azure VNet and Subnets...")
    subprocess.run(["terraform", "apply", "-auto-approve", "-target=azurerm_virtual_network.aks"], check=True)
    print("Network configuration completed!")

if __name__ == "__main__":
    configure_network()
