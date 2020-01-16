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
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "Installed!"

echo "Installing almostontop!"
git clone https://github.com/Valiev/almostontop.git ~/.oh-my-zsh/custom/plugins/almostontop
echo "Installed!"

echo "By copying .zshrc!"
sudo cp .zshrc $HOME/.zshrc
echo "OK"

echo "Done....."
