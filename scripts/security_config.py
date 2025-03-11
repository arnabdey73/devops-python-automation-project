import subprocess

def configure_security():
    print("Configuring RBAC and IAM roles for AKS...")
    subprocess.run(["terraform", "apply", "-auto-approve", "-target=azurerm_role_assignment.aks_cluster_admin"], check=True)
    print("Security configuration completed!")

if __name__ == "__main__":
    configure_security()
