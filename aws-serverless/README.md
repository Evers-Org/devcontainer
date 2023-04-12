# AWS Terraform Deployment

## .devcontaner/devcontainer.json
```json
{
	"name": "AWS Serverless",
	"build": {
		"dockerfile": "aws_serverless.dockerfile"
	},
	"mounts": [
		"source=~/.terraform.d/evers.tfrc.json,target=/root/.terraform.d/credentials.tfrc.json,type=bind,consistency=cached",
		"source=~/.aws,target=/root/.aws,type=bind,consistency=cached"
	],
	"postStartCommand": "fish",
	"customizations": {
		"vscode": {
			"extensions": [
				"hashicorp.terraform"
			]
		}
	}
}
```