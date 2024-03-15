# DevContainers example project

Taken from a Microsoft lecture. This allows a multitier project to be worked on as one workspace without having to install a bunch of frameworks on the machine. This example utilizes a sample Python application and a sample dotnet API application, with a docker-compose that spins them up.
Designed to work in Visual Studio Code.

# Extensions

VS Code starts with only Docker and Dev Containers extensions (other than usability extensions). Each container then loads extensions into that container
Need to test start up time. The extensions may/may not be saved as part of image. Also, test when disconneted from network.

# References

Prebuilt Container repo
https://github.com/devcontainers/images

Azure containers
https://dev.to/azure/devcontainers-for-azure-and-net-5942

Using containers with docker-compose
https://stackoverflow.com/questions/69635634/how-to-use-vs-code-dev-container-with-existing-docker-compose-file

Setting up prebuilds
https://containers.dev/guide/prebuild
