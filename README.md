# DevOps Python Automation Project

## Overview
This project automates the deployment of a Kubernetes cluster on Azure using Terraform, Helm, and Python scripts. It includes monitoring with Prometheus and Grafana and automates CI/CD with Azure DevOps.

### Key Components
1. **Terraform** - Automates AKS, networking, monitoring, and logging.
2. **Helm** - Deploys Prometheus, Grafana, and the Python application.
3. **Python Scripts** - Automate deployment, scaling, monitoring, and alerts.
4. **Azure DevOps Pipeline** - Automates CI/CD for infrastructure and application deployment.

---

## Prerequisites
- Azure CLI
- Terraform
- Helm
- Python 3.x
- Azure DevOps account

---

## Setup Instructions

### Step 1: Configure Azure CLI
```bash
az login
az account set --subscription <your-subscription-id>
```

### Step 2: Deploy AKS Cluster
```bash
python3 scripts/deploy_aks.py
```
### Step 3: Deploy Application
```bash
python3 scripts/prometheus_setup.py
```
### Step 4: Setup Monitoring
```bash
python3 scripts/prometheus_setup.py
```
### Step 5: Monitor Costs and Alerts
```bash
python3 scripts/cost_monitor.py
python3 scripts/prometheus_monitor.py
```
### Troubleshooting
* Check the pipeline logs in Azure DevOps for detailed error messages.
* Ensure that Kubernetes and Helm are properly configured in your environment.

### License
This project is licensed under the MIT License.

---

✅ That’s the **Azure DevOps pipeline configuration** and the **README.md** file! 🎉  
Let me know if you need any adjustments or more files! 🚀

