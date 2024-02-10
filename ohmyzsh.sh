#! /bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Oh My Zsh

rm ~/.zshrc
touch ~/.zshrc
echo "export ZSH="$HOME/.oh-my-zsh"" >> ~/.zshrc
echo "ZSH_THEME="powerlevel10k/powerlevel10k"" >> ~/.zshrc
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc
# Edit .zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
# Powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlightning
# plugins

exec zsh
