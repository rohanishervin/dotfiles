#!/usr/bin/env bash
# this script bootstrap the config files
# reference: https://github.com/psamim/


# nvim
rm -rf "$HOME/.config/nvim"
ln -sf "$PWD/nvim" "$HOME/.config/nvim"

# install vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tint2
mkdir -p "$HOME/.config/tint2/"
ln -sf $PWD/tint2/tint2rc $HOME/.config/tint2/tint2rc

# kitty
rm -rf "$HOME/.config/kitty/kitty.conf"
ln -sf "$PWD/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
