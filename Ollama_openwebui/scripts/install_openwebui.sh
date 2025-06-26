#!/bin/bash

set -e

echo "🌐 Installing OpenWebUI via Docker..."

# Check for Docker
if ! command -v docker &> /dev/null; then
  echo "❌ Docker is not installed. Please install Docker first."
  exit 1
fi

# Pull the latest OpenWebUI image & Run the container
echo "🚀 Starting OpenWebUI container..."

docker run -d \
  -p 3000:8080 \
  --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data \
  --name openwebui \
  --restart always \
  ghcr.io/open-webui/open-webui:main

echo "✅ OpenWebUI is running at http://localhost:3000"
echo "🧠 Make sure Ollama is running locally (on http://localhost:11434)"

