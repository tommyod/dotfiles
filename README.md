# Dotfiles

This repository contains the dotfiles for my personal Linux setup.


## Setting up symlinks

```
ln --symbolic ~/Desktop/dotfiles/.zshrc ~/.zshrc
```

## Software to install 

### Apt get

The following packages are installed via `sudo apt get install`.

- aptitude
- artha
- bcmwl-kernel-source 
- build-essential
- cmatrix
- cowsay
- curl
- darktable
- djview
- ffmpeg
- geogebra
- gimp
- git
- gnome-control-center
- gnome-online-accounts
- htop
- inkscape
- laptop-mode-tools
- linux-headers-generic
- make
- python3-dev
- qbittorrent
- ranger
- ruby 
- ruby-bundler
- ruby-dev
- snap
- texlive-full
- texstudio
- tmux
- tree
- ubuntu-restricted-extras
- ufraw-batch
- unity-tweak-tool
- vim
- weechat
- whois
- zsh


### Snappy

The following are installed via Snappy.

- sudo snap install atom --classic
- sudo snap install postman
- sudo snap install pycharm-professional --classic
- sudo snap install slack --classic
- sudo snap install spotify
- sudo snap install sublime-text --classic
- sudo snap install vlc

### Other

Other software, installed from the web.

- anaconda
- flux
- fzf
- oh-my-zsh
- privateinternetaccess

```bash
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
chmod +x Anaconda3-2019.03-Linux-x86_64.sh
./Anaconda3-2019.03-Linux-x86_64.sh
<install>
rm Anaconda3-2019.03-Linux-x86_64.sh
conda update --name base --channel defaults conda --yes 
conda update --all --yes
```

## Other stuff

### Script to fix caps lock problem

There's a delay on the Caps Lock button on Ubuntu.
It can be fixed with the following command.


```bash

xkbcomp -xkb "$DISPLAY" - | sed 's#key <CAPS>.*#key <CAPS> {\
    repeat=no,\
    type[group1]="ALPHABETIC",\
    symbols[group1]=[ Caps_Lock, Caps_Lock],\
    actions[group1]=[ LockMods(modifiers=Lock),\
    Private(type=3,data[0]=1,data[1]=3,data[2]=3)]\
    };\
    #' | xkbcomp -w 0 - "$DISPLAY" 2>/dev/null


```
