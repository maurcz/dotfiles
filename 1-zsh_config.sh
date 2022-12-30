#!/bin/bash

# Download Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Basic Shell Config
cp zsh/.zshrc ~/.zshrc
cp zsh/.p10k.zsh ~/.p10k.zsh