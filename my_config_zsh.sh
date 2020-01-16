#! /bin/bash

echo "Installing ZSH!"
sudo apt install zsh
echo "Installed!"

echo "Installing Oh My ZSH!"
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
echo "Installed!"

echo "By setting ZSH as the default shell!"
sudo usermod --shell $(which zsh) $USER
echo "OK!"

echo "Installing ZSF Autosuggestions!"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
echo "Installed!"

echo "Installing almostontop ZSH Plugin!"
source almostontop.plugin.zsh
echo "Installed!"

echo "Loading gnome-terminal.donf!"
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal.donf
echo "OK"

echo "By copying .zshrc!"
sudo mv .zshrc $HOME/.zshrc
echo "OK"

echo "Done....."
