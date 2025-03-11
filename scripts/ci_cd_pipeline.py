import subprocess

def setup_pipeline():
    print("Setting up Azure DevOps CI/CD pipeline...")
    subprocess.run(["az", "pipelines", "create", "--name", "DevOpsPipeline", "--repository", "my-repo", "--branch", "main"], check=True)
    print("CI/CD pipeline configured successfully!")

if __name__ == "__main__":
    setup_pipeline()
