# Maurcz .dotfiles

Basic machine setup. Not _fully_ automated, but easy enough.

- Setup `zsh` with `p10k` and customizations
- A few tools (brew, shell tools, k9s)
- Python version/dep/env managers

The process is separated into multiple scripts to make it easier to debug/continue if something goes wrong half-way through.

## Before you start

Create base directories and clone this repo with:

```bash
mkdir -p ~/Code/experiments && git clone https://github.com/maurcz/dotfiles.git ~/Code/dotfiles/
```

Then Setup `Zsh` with `OhMyZsh`:

```
sudo apt install -y zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && sudo chsh -s $(which zsh) $(whoami)
```

## Main Installation

```
./install.sh
```

### Troubleshooting

Since I only use these scripts when I'm setting up a new machine, success depends on whether [that person in Nebraska is still around](https://xkcd.com/2347/). Things that might break:

- Fun resolving OS versions in shell scripts: https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux
- Change the target `python` version at the top of `install.sh`. However, beware that if you change the version, building python might break: https://github.com/pyenv/pyenv/wiki/Common-build-problems . Tweaks to the process (like explicitly passing flags for OpenSSL should be added to `3-pyenv-base.sh`)
- If `apt` gets stuck for whatever reason, `ps -e | grep -e apt -e adept | grep -v grep`, then `kill -9 <PID>`

## PowerLevel10 Fonts

Install fonts from: https://github.com/romkatv/powerlevel10k#fonts and follow instructions for Linux/OSX. If using WSL, go to settings, JSON editor at the bottom right. _Add_ the following keys to the OS configs:

```
{
    "bellStyle": "none",
    "font":
    {
        "face": "MesloLGS NF",
        "size": 10,
        "weight": "medium"
    },
}
```

Change color scheme to `Campbell`.