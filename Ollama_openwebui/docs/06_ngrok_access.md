# 06 - Ngrok Remote Access
Want to access your local OpenWebUI instance from anywhere — without port forwarding or a public IP? Use **ngrok** to tunnel your local server securely to the internet.

## Step 1: Create Ngrok Account & Get Auth Token

1. Go to [ngrok.com](https://dashboard.ngrok.com)
2. Sign up or log in
3. Navigate to **[Auth Tokens](https://dashboard.ngrok.com/get-started/your-authtoken)** tab
4. Copy your unique token (looks like: `2yOzxXmIfp8RNAWQn...`)

## Step 2: Install Ngrok on Ubuntu

```bash
# Download and install ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list
sudo apt update && sudo apt install ngrok
```

## Step 3: Authenticate Ngrok with Your Token
```bash
ngrok config add-authtoken YOUR_TOKEN_HERE
```

## Step 4: Start Tunnel for OpenWebUI
OpenWebUI container is running on port 3000:
```bash
ngrok http 3000
```
You’ll see output like this:
```bash
Forwarding                    https://random-id.ngrok.io -> http://localhost:3000
```
Use the **https://random-id.ngrok.io** link to access OpenWebUI from outside your network

## Optional: Run ngrok in Background
```bash
nohup ngrok http 3000 > ngrok.log &
```
To stop:
```bash
kill $(pgrep ngrok)
```
### Security Tips
> Use authentication in OpenWebUI to protect remote access.
> You can enable password protection in ngrok (paid feature).
> Consider disabling registration (WEBUI_ALLOW_REGISTRATION=false).
