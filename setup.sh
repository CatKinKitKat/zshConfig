#!/bin/sh

currentDir=$(pwd)
if [ -x "$(command -v curl)" -a -x "$(command -v zsh)" ];
then

mkdir $HOME/.zsh
cp $currentDir/resources/zshrc $HOME/.zshrc
cp $currentDir/resources/powerlevel10k $HOME/.zsh/powerlevel10k.zsh

curl -L git.io/antigen > $HOME/.zsh/antigen.zsh

echo "Changing default shell to zsh: "
chsh -s /usr/bin/zsh

echo "Done"

else

echo "Please install curl & zsh"

fi
