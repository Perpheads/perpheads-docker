# Perpheads Docker

A minimal docker image based on the pterodactyl source images but with git installed and an optional background process.

The background process can be customized but is designed to pull git when the image first starts, and then every 30 minutes.

Settings of the image can be changed in the .env file located in the /home/container folder. The environment variables will be loaded at the start of the container.

The start.sh script in the assets folder is a dummy and should be replaced with the actual start script used to run the server in the container's filesystem.