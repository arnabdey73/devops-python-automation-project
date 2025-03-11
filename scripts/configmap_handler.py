import subprocess

def create_configmap():
    print("Creating ConfigMap for the application...")
    subprocess.run([
        "kubectl", "create", "configmap", "my-app-config",
        "--from-literal=APP_ENV=production",
        "--from-literal=LOG_LEVEL=info"
    ], check=True)
    print("ConfigMap created successfully!")

if __name__ == "__main__":
    create_configmap()
