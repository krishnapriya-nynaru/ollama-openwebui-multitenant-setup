#!/bin/bash

set -e
if ! command -v curl &> /dev/null; then
  echo "⚠️ curl not found. Installing..."
  sudo apt update -y
  sudo apt install -y curl
else
  echo "✅ curl is already installed."
fi
curl -fsSL https://ollama.com/install.sh | sh
ollama serve &
sleep 2
ollama --version
echo "✅ Ollama is installed and running."
