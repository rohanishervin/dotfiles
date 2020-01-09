#!/usr/bin/env bash
# this script bootstrap the config files
# reference: https://github.com/psamim/


# nvim
rm -rf "$HOME/.config/nvim"
ln -sf "$PWD/nvim" "$HOME/.config/nvim"

# install vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# kitty
rm -rf "$HOME/.config/kitty/kitty.conf"
ln -sf "$PWD/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# bin files
rm -rf "$HOME/bin"
ln -sf "$PWD/bin" "$HOME/bin"

# polybar
rm -rf "$HOME/.config/polybar"
ln -sf "$PWD/polybar" "$HOME/.config/polybar"

# i3
rm -rf "$HOME/.i3"
rm -rf "$HOME/.config/i3"
ln -sf "$PWD/i3" "$HOME/.i3"
ln -sf "$PWD/i3/i3blocks.conf" "$HOME/.i3blocks.conf"

# bumblebee
rm -rf "$HOME/.config/bumblebee-status.conf"
ln -sf "$PWD/i3/bumblebee-status.conf" "$HOME/.config/bumblebee-status.conf"

# zsh
rm -rf "$HOME/.zshrc"
ln -sf "$PWD/zsh/zshrc" "$HOME/.zshrc"

# X
ln -sf "$PWD/X/Xresources" "$HOME/.Xresources"
ln -sf "$PWD/X/xinitrc" "$HOME/.xinitrc"

# git
ln -sf "$PWD/git/config" "$HOME/.gitconfig"

# rofi
rm -rf $HOME/.config/rofi
ln -sf $PWD/rofi $HOME/.config/rofi

# spacemacs
rm -rf "$HOME/.emacs.d"
if [ ! -d "$PWD/emacs.d" ]; then
    cd $PWD/emacs.d;
    git checkout develop;
    cd -
fi
ln -sf "$PWD/emacs.d" "$HOME/.emacs.d"
ln -sf "$PWD/spacemacs/spacemacs" "$HOME/.spacemacs"

# output a congrats :)
echo "Congrats!!, you've just installed all the configs :)"
