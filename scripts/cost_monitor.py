from azure.identity import DefaultAzureCredential
from azure.mgmt.costmanagement import CostManagementClient

credential = DefaultAzureCredential()
client = CostManagementClient(credential)

def fetch_costs():
    print("Fetching Azure cost data...")
    result = client.query.usage("/subscriptions/<subscription_id>")
    for row in result.rows:
        print(f"Service: {row[0]}, Cost: {row[1]}")

if __name__ == "__main__":
    fetch_costs()
