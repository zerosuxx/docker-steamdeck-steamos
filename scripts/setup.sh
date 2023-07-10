#!/bin/bash

cd $(dirname "$BASH_SOURCE")
for f in *-*.sh; do
    sudo bash "$f"
done
