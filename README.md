# 🧠 ollama-openwebui-multitenant-setup

A complete guide to self-hosting LLMs with [Ollama](https://ollama.com) and [OpenWebUI](https://github.com/open-webui/open-webui) on **Ubuntu 22.04**, with Docker, multi-user support, and remote access via ngrok.

---

##  Features
- ✅ Ollama installation and model pulls
- ✅ OpenWebUI setup via Docker
- ✅ Multi-user login support
- ✅ Remote access using ngrok
- ✅ Modular docs with screenshots
- ✅ Shell scripts to automate setup

---

##  Documentation

| Section | Description |
|---------|-------------|
| [00 - Install Docker](docs/00_install_docker.md) | Setup Docker & Docker Compose |
| [01 - Install OpenWebUI](docs/01_install_openwebui.md) | Docker-based setup |
| [02 - Install Ollama](docs/02_install_ollama.md) | LLM backend installation |
| [03 - Pull LLM Models](docs/03_pull_models.md) | Example: llama3, phi3, codellama |
| [04 - User Management](docs/04_user_management.md) | Add/remove users |
| [05 - Multi-user Setup](docs/05_multiuser_setup.md) | Multi-session environment |
| [06 - Ngrok Remote Access](docs/06_ngrok_access.md) | Expose UI to the internet securely |

---

##  Quick Start

###  Clone the Repository

```bash
git clone https://github.com/yourname/ollama-openwebui-multitenant-setup.git
cd ollama-openwebui-multitenant-setup
chmod +x scripts/start_all.sh
bash scripts/start_all.sh <your_ngrok_authtoken>
```

## UI Preview
Here's how the OpenWebUI interface looks with multi-user support:
[UI](https://github.com/krishnapriya-nynaru/ollama-openwebui-multitenant-setup/blob/main/Ollama_openwebui/docs/images/openweb_ui.png?raw=true)

## Contributing 
Contributions are welcome! To contribute to this project:
1. Fork the repository.
2. Create a new branch for your changes.
3. Make your changes and ensure the code passes all tests.
4. Submit a pull request with a detailed description of your changes.

If you have any suggestions for improvements or features, feel free to open an issue!

##  Acknowledgements
- [**Ollama**](https://ollama.com) – Lightweight local LLM runtime
- [**OpenWebUI**](https://github.com/open-webui/open-webui) – Elegant and extensible chat UI for LLMs
- [**Ngrok**](https://ngrok.com) – Secure tunneling service to expose localhost to the internet
- [**Docker**](https://www.docker.com) – Container-based deployment and orchestration platform


> Built with 💻, 🧠, and ☕ by Krishna Priya Nynaru
