
# 02 - Install Ollama on Ubuntu 22.04

This guide walks you through installing [Ollama](https://ollama.com) on your Ubuntu 22.04 system. Ollama allows you to run large language models locally with ease.

---

## 📋 Prerequisites

- Ubuntu 22.04
- `curl` installed (`sudo apt install curl`)
- At least 8–16 GB RAM (depending on model)
- Optional: NVIDIA GPU with CUDA for faster inference

---

## 🔧 Installation Steps

### 1. Download and Install Ollama

Run the following one-liner in your terminal:

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

### 2. Start the Ollama Service

```bash
ollama serve
```
If successful, Ollama will start a background server to handle model loading and chat requests.

### 3. Verify Installation

```bash
ollama --version
```
