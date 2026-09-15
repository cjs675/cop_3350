#!/bin/bash

echo "Updating package lists.." 

sudo dnf update 

echo "Upgrading packages..." 

sudo dnf upgrade -y

echo "Removing unnecessary packages..." 

sudo dnf autoremove -y

echo "System update completed at $(date)"
