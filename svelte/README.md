# Svelte

## .devcontaner/devcontainer.json
```json
{
  "name": "Svelte",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "postStartCommand": "npm i && nohup ash -c 'npm run dev &'",
  "mounts": [],
  "forwardPorts": [
    8080
  ],
  "customizations": {
    "vscode": {
      "extensions": [
		"svelte.svelte-vscode"
	]
    }
  }
}
```