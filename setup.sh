#!/bin/bash

echo -e "\033[33mWarning: make sure you have installed following softwares\033[0m"
echo "git vim vim-gnome ctags cscope xclip astyle python-setuptools python-devel"
echo "You can execute: apt-get install -y git vim vim-gnome ctags cscope xclip astyle python-setuptools python-devel"

read -p "continue, y or n ?" choice
case $choice in
    y | Y | yes | Yes | YES )
        echo "Start to configure vim ..."
        ;;
    * )
        exit 1
        ;;
esac

sudo easy_install -ZU autopep8 

if [ -d ~/vim_old/ ];then
    rm -rf ~/vim_old 
fi

if [ -d ~/vim ];then 
    mv ~/vim ~/vim_old
fi

if [ -d ~/.vim_old ];then
    rm -rf ~/.vim_old 
fi

if [ -d ~/.vim ];then
    mv ~/.vim ~/.vim_old
fi

if [ -f ~/.vimrc ];then 
    mv ~/.vimrc ~/.vimrc_old
fi

VIM_CONFIG_FILE_PATH=`dirname $0`
tar -xzvf $VIM_CONFIG_FILE_PATH/vim.tar.gz -C ~/
mv -f ~/vim ~/.vim
cp -f $VIM_CONFIG_FILE_PATH/vimrc ~/.vimrc 
cp -f $VIM_CONFIG_FILE_PATH/extra_plugins/*.vim ~/.vim/plugin/ 

read -p "Install bundle, y or n ? [n]" choice
case $choice in
    y | Y | yes | Yes | YES )
        echo "Start to install bundle"
        ;;
    * )
        exit 1
        ;;
esac

echo "


Install bundle about vim .......... 
It may costs much time, please wait patiently


The process bar is in left side of this window
Symbol "+" : current bundle is being installed
Symbol "!" : failed to install current bundle
Make sure the network is available
" > vim_project

vim vim_project -c "BundleInstall" -c "qa"
rm vim_project
echo "
**********************
end of configuring vim
**********************
"
