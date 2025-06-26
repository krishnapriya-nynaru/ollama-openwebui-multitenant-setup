# 05 - Multi-User Setup in OpenWebUI

OpenWebUI supports multiple users accessing the same system with **isolated chat sessions**, centralized user management, and optional role-based permissions. This guide shows how to configure and manage multi-user access.

## User Isolation
Each user has:
- Their own chat history
- Personal notes and workspace
- Session state isolated from others
**Note** - Users cannot see or access other users’ data unless they are Admin

##  User Roles and Permissions
| **Role**   | **Capabilities**                                                |
|------------|-----------------------------------------------------------------|
| `Admin`    | Full access to all features including user management, models, and settings |
| `User`     | Can chat with models, access notes and personal workspace       |
| `Readonly` | View-only mode; cannot send messages or initiate new chats      |

> 🛠️ You can change roles anytime from the **Admin Console**.

## How to Add More Users
- Follow the steps in [04 - User Management](https://github.com/krishnapriya-nynaru/ollama-openwebui-multitenant-setup/blob/main/Ollama_openwebui/docs/04_user_management.md) to add users via the Admin Console.
- Admin logs in to http://localhost:3000/admin
- Click ➕ to add new users
- Provide email, password, and assign role

## Multi-Device Access
Each user can access the platform from:
- Multiple devices
- Any browser via http://<your-host>:3000
- Optional: remote access via [06 - Ngrok](https://github.com/krishnapriya-nynaru/ollama-openwebui-multitenant-setup/blob/main/Ollama_openwebui/docs/06_ngrok_access.md)
## Multi-Model Handling
- If multiple users use different models (like llama3.2, qwen3, etc.):
- The UI will remember each user's last-used model
- Ollama handles loading/unloading automatically
- You can also preload models during system boot in scripts/start_all.sh.
