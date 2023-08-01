#!/bin/bash

echo "Pulling changes from git"
git -C "/home/container/garrysmod/addons/$CONTENT_FOLDER_NAME" pull --ff-only "$CONTENT_REPOSITORY_URL"
git -C "/home/container/garrysmod/gamemodes/$GAMEMODE_FOLDER_NAME" pull --ff-only "$GAMEMODE_REPOSITORY_URL"
git -C "/home/container/garrysmod/addons/$AC_FOLDER_NAME" pull --ff-only "$AC_REPOSITORY_URL"