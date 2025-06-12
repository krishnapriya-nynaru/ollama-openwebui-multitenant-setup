# ollama-openwebui-multitenant-setup
# 🧠 OpenWebUI + Ollama Setup on Ubuntu 22.04

A complete guide to self-hosting LLMs with [Ollama](https://ollama.com) and [OpenWebUI](https://github.com/open-webui/open-webui) on Ubuntu 22.04 with multi-user support and remote access via ngrok.

## 📦 Features
- Ollama installation and model pulls
- OpenWebUI setup
- Multi-user support
- Remote access with ngrok
- Scripts and screenshots for each step

## 📁 Documentation
| Section | Description |
|--------|-------------|
| [01 - Install OpenWebUI](docs/01_install_openwebui.md) | Step-by-step guide |
| [02 - Install Ollama](docs/02_install_ollama.md) | LLM backend setup |
| [03 - Pull LLM Models](docs/03_pull_models.md) | Example: llama3, phi3 |
| [04 - User Management](docs/04_user_management.md) | Add/remove users |
| [05 - Multi-user Setup](docs/05_multiuser_setup.md) | Multi-session setup |
| [06 - Ngrok Remote Access](docs/06_ngrok_access.md) | Access from outside your network |

## 🚀 Quick Start
```bash
git clone https://github.com/yourname/openwebui-ollama-ubuntu-setup.git
cd openwebui-ollama-ubuntu-setup
bash scripts/start_all.sh
```
