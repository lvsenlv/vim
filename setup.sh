#!/bin/bash

if which apt-get >/dev/null; then
	sudo apt-get install -y git vim vim-gnome ctags cscope xclip astyle python-setuptools python-dev
elif which yum >/dev/null; then
	sudo yum install -y git vim gcc ctags cscope xclip astyle python-setuptools python-devel 	
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags

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

tar -xzvf ma6147_vundle_vim_git.tar.gz -C ~/ 
mv -f ~/vim ~/.vim

if [ -f ~/.vimrc ];then 
    mv ~/.vimrc ~/.vimrc_old
fi

VIM_CONFIG_FILE_PATH=`pwd`

cp -f $VIM_CONFIG_FILE_PATH/vimrc ~/.vimrc 
cp -f $VIM_CONFIG_FILE_PATH/extra_plugins/*.vim ~/.vim/plugin/ 

echo "


Install bundle about vim .......... 
It costs much time, please wait patiently


The process bar is in left side of this window
Symbol "+" : current bundle is being installed
Symbol "!" : failed to install current bundle
Rerun this script when the net is available
" > vim_project

vim vim_project -c "BundleInstall" -c "q" -c "q"
rm vim_project
echo "
**********************
end of configuring vim
**********************
"

