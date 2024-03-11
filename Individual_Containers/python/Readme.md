# Dotnet API sample devcontainer
Uses Debian distro (bookworm)
Make sure to set Arch to linux/arm64 on Mac M* chip to prevent using Rosetta

# From Source Repo:
Beyond Python and git, this image / Dockerfile includes a number of Python tools, zsh, Oh My Zsh!, a non-root vscode user with sudo access, and a set of common dependencies for development.
Includes nvm for installing Node
Includes pipx for installing isolated python packages

# Installing Node easily
Add to features in devcontainer.json
```
{
  "features": {
    "ghcr.io/devcontainers/features/node:1": {
      "version": "latest"
    }
  }
}
```