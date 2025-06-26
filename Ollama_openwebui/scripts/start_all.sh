#!/bin/bash

set -e

# ========= Configuration =========
# Replace or export these variables if needed
NGROK_TOKEN=${1:-"YOUR_NGROK_AUTHTOKEN_HERE"}

# ========= 0. Welcome =========
echo "🧠 Starting Full OpenWebUI + Ollama + Ngrok Setup on Ubuntu 22.04..."
echo "---------------------------------------------------------------"

# ========= 1. Install Docker =========
echo "🐳 Installing Docker..."
bash scripts/install_docker.sh

# ========= 2. Install Ollama and Run Models =========
echo "📦 Installing Ollama..."
bash scripts/install_ollama.sh

echo "📥 Pulling models via Ollama..."
ollama pull llama3:latest
ollama pull qwen:7b

# ========= 3. Install and Run OpenWebUI =========
echo "🌐 Deploying OpenWebUI via Docker..."
bash scripts/install_openwebui.sh

# ========= 4. Setup Ngrok =========
if [[ "$NGROK_TOKEN" == "YOUR_NGROK_AUTHTOKEN_HERE" ]]; then
  echo "❌ Please provide your ngrok token: ./start_all.sh <your_ngrok_authtoken>"
  exit 1
fi

echo "🌍 Configuring ngrok remote access..."
bash scripts/setup_ngrok.sh "$NGROK_TOKEN"

# ========= Final Status =========
echo ""
echo "✅ Setup Complete!"
echo "---------------------------------------------------------------"
echo "🔗 OpenWebUI:      http://localhost:3000"
echo "🌐 Ngrok Tunnel:   (Check your ngrok dashboard or ngrok.log)"
echo "🧠 Ollama Server:  Running at http://localhost:11434"

