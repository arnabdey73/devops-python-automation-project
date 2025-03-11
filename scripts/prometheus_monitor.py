import requests

PROMETHEUS_URL = "http://localhost:9090/api/v1/query"

def fetch_metrics(query):
    response = requests.get(PROMETHEUS_URL, params={"query": query})
    data = response.json()
    print("Metrics:", data)

if __name__ == "__main__":
    fetch_metrics("up")
