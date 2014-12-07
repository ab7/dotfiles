# dotfiles (mac)

To backup old dotfiles and symlink new ones, run:
    sh setup.sh

For vim install vundle:
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Then open vim and run:
    :PluginInstall

YouComplete is disabled by default because of its many dependencies. To install, uncomment `Plugin Valloric/YouCompleteMe` and consult the [documentation](//github.com/Valloric/YouCompleteMe) to set everything up.

