# Wyatt's general post-installation script
# Created 10/07/17 , modified 10/07/17
# Licesened under the MIT

# First, we need to check what Linux distribution you're running
linuxver = cat /etc/issue


# Update package repo
echo "Updating and upgrading packages..."
sleep 3
sudo apt-get update -y --quiet
sudo apt-get upgrade -y --quiet

# install packages that weren't installed
echo "Installing packages that were not installed..."
sudo apt-get install -y ubuntu-restricted-extras mpv gdebi chromium-browser ufw gparted shutter fish

# note about the fish shell
echo "This script installed the friendly interactive shell, or fish."
echo "Your shell will now be the fish shell. This will take effect next login."
chsh -s /usr/bin/fish
sleep 2

# Clean up
echo "Tidying up..."
sudo apt-get autoremove -y
sudo apt-get update -y