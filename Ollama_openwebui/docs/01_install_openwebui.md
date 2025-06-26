# 01 - Install OpenWebUI (via Docker)

This guide explains how to install and run [OpenWebUI](https://github.com/open-webui/open-webui) on Ubuntu 22.04 using Docker. This web interface connects to LLMs served by Ollama and supports local and remote hosting, authentication, and multi-user access.


## 📋 Prerequisites

- ✅ Docker and Docker Compose installed  
  👉 See: [00 - Install Docker](00_install_docker.md)

- ✅ Ollama installed and running locally  
  👉 See: [02 - Install Ollama](02_install_ollama.md)


## Step 1: Run OpenWebUI Container (Local Ollama)

If **Ollama is running on the same machine**, use this one-liner to start OpenWebUI:

```bash
docker run -d \
  -p 3000:8080 \
  --add-host=host.docker.internal:host-gateway \
  -v open-webui:/app/backend/data \
  --name open-webui \
  --restart always \
  ghcr.io/open-webui/open-webui:main
```
- Access UI: http://localhost:3000
- Data is stored in the Docker volume: open-webui
- Auth is enabled by default
- The container will auto-restart on reboot or failure

## Step 2: Access Web UI
Visit
```bash
http://localhost:3000

**Note** : GPU Support (Optional)
If you want to run OpenWebUI with GPU acceleration for model inference (when GPU-enabled Ollama or other backends are in use), follow the official setup instructions:
[ GPU Setup Guide – open-webui GitHub](https://github.com/open-webui/open-webui)
This requires installing nvidia-docker2 and enabling the --gpus flag in Docker.
```
