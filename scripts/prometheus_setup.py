import subprocess

def setup_prometheus():
    print("Setting up Prometheus with Helm...")
    subprocess.run([
        "helm", "repo", "add", "prometheus-community", "https://prometheus-community.github.io/helm-charts"
    ], check=True)
    subprocess.run(["helm", "repo", "update"], check=True)
    subprocess.run([
        "helm", "install", "prometheus", "prometheus-community/kube-prometheus-stack",
        "--namespace", "monitoring", "--create-namespace"
    ], check=True)
    print("Prometheus setup completed!")

if __name__ == "__main__":
    setup_prometheus()
