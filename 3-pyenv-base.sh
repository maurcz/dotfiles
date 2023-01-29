#!/bin/bash

brew install pyenv
echo '# pyenv' >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
eval "$(pyenv init -)"
if [ "$(uname)" == "Linux" ]; then  # https://github.com/pyenv/pyenv/wiki#troubleshooting--faq
    sudo apt update && sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
    LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/openssl@3/lib" \
    CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/openssl@3/include" \
    pyenv install $1
fi

# Missing OSX - update when you go through this process again on a new Mac
# The location of openssl will change in OSX, use `brew info openssl` to get the correct path.
