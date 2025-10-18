# .dotfiles - Zorin OS

## Required dependecies
```bash
- go #For asdf
``` 
## As root

```sh
sudo apt update && sudo apt upgrade
sudo apt install curl git less make neovim stow sudo tmux vi vim zsh

chsh -s /bin/zsh

sudo usermod -aG sudo username
passwd <username>

chmod +w /etc/sudoers
vim /etc/sudoers
chmod -w /etc/sudoers

reboot
```

## As $USER

```sh
git clone https://github.com/eliseuvideira/.dotfiles-server.git .dotfiles

cd .dotfiles

make install

sudo reboot
```
