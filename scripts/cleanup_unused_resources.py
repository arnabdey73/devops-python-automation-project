import subprocess

def cleanup():
    print("Cleaning up unused Kubernetes resources...")
    subprocess.run(["kubectl", "delete", "pod", "--field-selector=status.phase=Succeeded"], check=True)
    print("Cleanup completed successfully!")

if __name__ == "__main__":
    cleanup()
