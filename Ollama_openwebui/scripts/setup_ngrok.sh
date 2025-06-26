#!/bin/bash

set -e

# 🌐 Default port
PORT=3000

# 🔐 Replace this with your actual token or pass as arg
NGROK_TOKEN=${1:-"YOUR_NGROK_AUTHTOKEN_HERE"}

if [[ "$NGROK_TOKEN" == "YOUR_NGROK_AUTHTOKEN_HERE" ]]; then
  echo "❗ Please provide your ngrok authtoken as the first argument."
  echo "Usage: ./setup_ngrok.sh <your_token>"
  exit 1
fi

echo "📦 Installing ngrok..."

# Install ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list
sudo apt update && sudo apt install -y ngrok

# Add auth token
echo "🔐 Adding ngrok auth token..."
ngrok config add-authtoken "$NGROK_TOKEN"

# Start tunnel
echo "🚀 Starting ngrok tunnel on port $PORT..."
nohup ngrok http $PORT > ngrok.log 2>&1 &

sleep 2
echo "📂 Ngrok logs: tail -f ngrok.log"
echo "🌐 Check tunnel status here: https://dashboard.ngrok.com/endpoints"


# Usuage
# chmod +x scripts/setup_ngrok.sh
# ./scripts/setup_ngrok.sh <your_ngrok_authtoken>

