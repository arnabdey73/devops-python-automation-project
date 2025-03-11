import subprocess

def deploy_app():
    print("Deploying application using Helm...")
    subprocess.run(["helm", "install", "my-app", "./helm/my-app"], check=True)
    print("Application deployed successfully!")

if __name__ == "__main__":
    deploy_app()
