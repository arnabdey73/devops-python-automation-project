import subprocess

def configure_ingress():
    print("Configuring Ingress for the application...")
    subprocess.run(["kubectl", "apply", "-f", "./helm/my-app/templates/ingress.yaml"], check=True)
    print("Ingress configuration completed!")

if __name__ == "__main__":
    configure_ingress()
