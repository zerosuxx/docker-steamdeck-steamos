#!/bin/bash

sudo pacman -S --noconfirm ufw
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
