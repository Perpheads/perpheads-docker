#!/bin/bash

echo "Pulling changes from git"
git -C "/home/container/garrysmod/addons/$CONTENT_FOLDER_NAME" pull --rebase "$CONTENT_REPOSITORY_URL" master
git -C "/home/container/garrysmod/gamemodes/$GAMEMODE_FOLDER_NAME" pull --autostash --rebase "$GAMEMODE_REPOSITORY_URL" master
git -C "/home/container/garrysmod/addons/$AC_FOLDER_NAME" pull --rebase "$AC_REPOSITORY_URL" main
