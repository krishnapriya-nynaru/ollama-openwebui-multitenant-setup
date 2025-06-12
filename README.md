# 🧠 ollama-openwebui-multitenant-setup

A complete guide to self-hosting LLMs with [Ollama](https://ollama.com) and [OpenWebUI](https://github.com/open-webui/open-webui) on **Ubuntu 22.04**, with Docker, multi-user support, and remote access via ngrok.

---

## 📦 Features
- ✅ Ollama installation and model pulls
- ✅ OpenWebUI setup via Docker
- ✅ Multi-user login support
- ✅ Remote access using ngrok
- ✅ Modular docs with screenshots
- ✅ Shell scripts to automate setup

---

## 📁 Documentation

| Section | Description |
|---------|-------------|
| [01 - Install OpenWebUI](docs/01_install_openwebui.md) | Docker-based setup |
| [02 - Install Ollama](docs/02_install_ollama.md) | LLM backend installation |
| [03 - Pull LLM Models](docs/03_pull_models.md) | Example: llama3, phi3, codellama |
| [04 - User Management](docs/04_user_management.md) | Add/remove users |
| [05 - Multi-user Setup](docs/05_multiuser_setup.md) | Multi-session environment |
| [06 - Ngrok Remote Access](docs/06_ngrok_access.md) | Expose UI to the internet securely |

---

## 🚀 Quick Start

### 📥 Clone the Repository

```bash
git clone https://github.com/yourname/ollama-openwebui-multitenant-setup.git
cd ollama-openwebui-multitenant-setup
bash scripts/start_all.sh
```
