#!/bin/bash
# Infrastructure-as-Code (IaC) idempotent setup script for Ubuntu AWS EC2
set -e

if ! command -v docker &> /dev/null; then
    echo "Installing Docker and Docker Compose plugin..."
    sudo apt-get update -y
    sudo apt-get install -y docker.io docker-compose-v2
    sudo systemctl enable --now docker
    sudo usermod -aG docker ubuntu
fi

mkdir -p ~/atu-devops-app
echo "AWS EC2 Server provisioned and ready for deployment."
