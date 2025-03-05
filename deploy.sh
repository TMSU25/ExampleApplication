#!/usr/bin/env bash
sudo apt update && sudo apt install -y nodejs npm
sudo npm install -g pm2
export PATH=$PATH:/usr/local/bin

# Stop any existing instance
pm2 stop example_app || true

# Install application dependencies
npm install

# Start the application
pm2 start ./bin/www --name example_app
