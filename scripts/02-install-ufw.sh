#!/bin/bash

sudo pacman -S --overwrite '*' --noconfirm ufw
sudo ufw allow ssh
sudo ufw --force enable
sudo ufw status
