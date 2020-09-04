#!/bin/sh

currentDir=$(pwd)
if [ -x "$(command -v git)" -a -x "$(command -v zsh)" ];
then

mkdir $HOME/.zsh
cp $currentDir/resources/zshrc "$HOME/.zshrc"

git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

echo "Changing default shell to zsh: "
chsh -s /usr/bin/zsh

echo "Done"

else

echo "Please install git & zsh\nsudo pacman -Syyuu git zsh"

fi
