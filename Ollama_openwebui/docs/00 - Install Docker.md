# 🐳 00 - Install Docker & Docker Compose on Ubuntu 22.04

This guide walks you through a secure and up-to-date installation of **Docker Engine** and **Docker Compose** using Docker's official APT repository.

---

## 📋 Prerequisites

- ✅ Ubuntu 22.04
- ✅ `sudo` privileges
- ✅ Internet access

---

## 🚀 Install Docker (Official APT Method)

### 1. Update package index and install dependencies

```bash
sudo apt-get update
sudo apt-get install -y ca-certificates curl
# Add Docker’s official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the Docker APT repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Update the APT cache
sudo apt-get update
# Install Docker and Docker Compose
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin
```
### Verify Installation
```bash
docker --version
```
### Run a test container:
```bash
docker run hello-world
```

#### Common Issue: Permission Denied to Docker Daemon
- If you get an error like:
```bash
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
```
- It means your user is not in the docker group. Fix it with:
```bash
sudo usermod -aG docker $USER
```
Then re-run your Docker command without sudo.

#### Check Docker Compose
```bash
docker compose version
```




