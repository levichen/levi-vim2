#!/bin/sh

current=`pwd`

if [ -L "$HOME/.vim"  ] || [ -d "$HOME/.vim"  ]
then
   mv $HOME/.vim $HOME/.vim.bak
fi
if [ -L "$HOME/.vimrc"  ] || [ -f "$HOME/.vimrc"  ]
then
    mv $HOME/.vimrc $HOME/.vimrc.bak
fi

cd $HOME
ln -s $current $HOME/.vim
ln -s $current/vimrc $HOME/.vimrc

echo "Done"
