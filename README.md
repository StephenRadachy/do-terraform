# do-terraform

Creates a freebsd 11.0 instance and a dns record for radachy.com with terraform on Digital Ocean. Remote state backed by Google Drive.

## Prerequisites

- [Doctl](https://github.com/digitalocean/doctl)
	- `brew install doctl`
	- run `doctl auth init` and add your access token
- [Google Drive](https://drive.google.com)
	- `brew install google-drive`
- [Terraform](https://www.terraform.io/)
	- `brew install terraform`


## Setup

- Create an SSH key `~/.ssh/do`
	- `ssh-keygen -t ed25519 -f "~/.ssh/do"`
	- Use a strong password
- Copy the public key
	- `cat ~/.ssh/do.pub | pbcopy`
- Add the SSH key to your Digital Ocean account
	- https://cloud.digitalocean.com/settings/security

## Deploy

- `source ./setup.sh`
- `terraform apply`

## Login

- `ssh-add ~/.ssh/do`
- `ssh freebsd@radachy.com`