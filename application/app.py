from flask import Flask, request, jsonify
from datetime import datetime
from zoneinfo import ZoneInfo

app = Flask(__name__)

def get_client_ip():
    # Handles proxy headers
    xff = request.headers.get("X-Forwarded-For", "")
    if xff:
        return xff.split(",")[0].strip()
    return request.remote_addr or "unknown"

@app.route("/", methods=["GET"])
def home():
    response = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "ip": get_client_ip()
    }
    return jsonify(response), 200

# @app.route("/health", methods=["GET"])
# def health():
#     return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    # Use 5000 internally (standard for containers)
    app.run(host="0.0.0.0", port=8080)
