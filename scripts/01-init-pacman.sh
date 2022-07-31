#!/bin/bash

sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -Fy
sudo pacman -Sy
