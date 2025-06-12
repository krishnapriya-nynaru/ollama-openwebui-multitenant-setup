# 🤖 03 - Pull LLM Models with Ollama

This guide shows you how to pull and run LLMs using [Ollama](https://ollama.com), specifically focusing on the latest high-performance models like `llama3.2:latest` and `qwen3:8b`.

---

## 🚀 Prerequisites

- ✅ Ollama installed and running (`ollama serve`)
- ✅ Internet access
- ✅ Minimum 8–16 GB RAM depending on model
- 🔁 Recommended: NVIDIA GPU with CUDA for faster inference

---

## Pull and Run Models

### 🔹 1. LLaMA 3.2 (latest release)

```bash
ollama run llama3.2:latest
```
Meta’s LLaMA 3.2 model provides strong performance for general-purpose tasks.

### 🔹 2. Qwen 3 - 8B
```bash
ollama run qwen3:8b
```
Alibaba's Qwen-3 8B model, great for multilingual and code generation tasks.

#### Just Pull Without Running
```bash
ollama pull llama3.2:latest
ollama pull qwen3:8b
```
#### View Installed Models
```bash
ollama list
```
#### Remove Unused Models
```bash
ollama rm llama3.2:latest
ollama rm qwen3:8b
```
