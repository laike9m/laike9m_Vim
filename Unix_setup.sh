mkdir ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -s ~/.vim/laike9m_Vim/.vimrc ~/.vimrc
vim +BundleInstall +qall
