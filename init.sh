
if [ -f ~/.vimrc ];then
    mv ~/.vimrc /tmp/vimrc_back$(date +%s)
fi
if [ -d ~/.vim ];then
    mv ~/.vim /tmp/vim_back$(date +%s)
fi
git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
echo `pwd`
ln -s $(pwd)/vimrc $HOME/.vimrc
