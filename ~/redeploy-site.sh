#!/bin/bash

# Change directory to project folder
cd ./Portfolio

# Fetch latest changes from main branch on GitHub and reset local repository
git fetch && git reset origin/main --hard

# Spin containers down to prevent out of memory issues on our VPS instances when building in the next step
docker compose -f docker-compose.prod.yml down

# Build the container
docker compose -f docker-compose.prod.yml up -d --build