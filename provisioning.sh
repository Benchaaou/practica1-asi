#!/usr/bin/env bash
set -e

apt-get update
apt-get upgrade -y

# instalar Docker
curl -fsSL https://get.docker.com | sh

usermod -aG docker vagrant