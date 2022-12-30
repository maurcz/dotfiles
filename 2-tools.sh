#!/bin/bash

# Homebrew
if [ "$(uname)" == "Linux" ]; then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/maurcz/.zprofile
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/maurcz/.zprofile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
brew update

# fzf
brew install fzf
# /home/linuxbrew/.linuxbrew/opt/fzf/install

# Kubernetes
brew install kubectl
brew install k9s
brew install kubectx