#!/bin/bash

# Clone dotfiles repository. 
cd $HOME
git clone git@github-personal:sweeney-j/dotfiles.git
dotfileDir=$PWD/dotfiles

# Link ./config to dotfiles. 
mkdir nvim zsh ghostty
ln -s "${dotfileDir}/.config/nvim" "$HOME/.config/nvim"
ln -s "${dotfileDir}/.config/zsh" "$HOME/.config/zsh"
ln -s "${dotfileDir}/.config/ghostty" "$HOME/.config/ghostty"