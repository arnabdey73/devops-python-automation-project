import subprocess

def auto_scale():
    print("Setting up Horizontal Pod Autoscaler...")
    subprocess.run(["kubectl", "apply", "-f", "./helm/my-app/templates/hpa.yaml"], check=True)
    print("HPA configured successfully!")

if __name__ == "__main__":
    auto_scale()
