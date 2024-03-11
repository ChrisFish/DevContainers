# Dotnet API sample devcontainer
Uses Debian distro (bookworm)
Make sure to set Arch to linux/arm64 on Mac M* chip to prevent using Rosetta

# Other notes
# Enabling HTTPS in ASP.NET using your own dev certificate
To enable HTTPS in ASP.NET, you can mount an exported copy of your local dev certificate.

Export it using the following command:

Windows PowerShell
```
dotnet dev-certs https --trust; dotnet dev-certs https -ep "$env:USERPROFILE/.aspnet/https/aspnetapp.pfx" -p "SecurePwdGoesHere"
```
macOS/Linux terminal
```
dotnet dev-certs https --trust; dotnet dev-certs https -ep "${HOME}/.aspnet/https/aspnetapp.pfx" -p "SecurePwdGoesHere"
```
Add the following in to devcontainer.json:
```
"remoteEnv": {
    "ASPNETCORE_Kestrel__Certificates__Default__Password": "SecurePwdGoesHere",
    "ASPNETCORE_Kestrel__Certificates__Default__Path": "/home/vscode/.aspnet/https/aspnetapp.pfx",
}
```
Finally, make the certificate available in the container as follows:

Add the following to devcontainer.json:
```
"mounts": [ "source=${env:HOME}${env:USERPROFILE}/.aspnet/https,target=/home/vscode/.aspnet/https,type=bind" ]
```
# Installing Node.js or the Azure CLI
Given JavaScript front-end web client code written for use in conjunction with an ASP.NET back-end often requires the use of Node.js-based utilities to build, this container also includes nvm so that you can easily install Node.js.

If you would like to install the Azure CLI, you can reference a dev container feature by adding the following to devcontainer.json:
```
{
  "features": {
    "ghcr.io/devcontainers/features/azure-cli:1": {
      "version": "latest"
    }
  }
}
```