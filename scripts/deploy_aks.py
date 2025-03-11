import subprocess

def deploy_aks():
    print("Deploying AKS cluster using Terraform...")
    subprocess.run(["terraform", "init"], check=True)
    subprocess.run(["terraform", "apply", "-auto-approve"], check=True)
    print("AKS cluster deployed successfully!")

if __name__ == "__main__":
    deploy_aks()
