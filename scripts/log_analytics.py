from azure.identity import DefaultAzureCredential
from azure.mgmt.loganalytics import LogAnalyticsManagementClient

credential = DefaultAzureCredential()
client = LogAnalyticsManagementClient(credential, "<subscription_id>")

def get_log_workspaces():
    print("Fetching Log Analytics Workspaces...")
    workspaces = client.workspaces.list_by_subscription()
    for workspace in workspaces:
        print(f"Workspace: {workspace.name} - Location: {workspace.location}")

if __name__ == "__main__":
    get_log_workspaces()
