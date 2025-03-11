import requests

ALERT_WEBHOOK = "https://hooks.slack.com/services/your/webhook/url"

def send_alert(message):
    payload = {"text": message}
    response = requests.post(ALERT_WEBHOOK, json=payload)
    if response.status_code == 200:
        print("Alert sent successfully!")
    else:
        print(f"Failed to send alert: {response.status_code}")

if __name__ == "__main__":
    send_alert("Critical alert: High CPU usage detected!")
