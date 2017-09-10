# dotfiles_mac

Clone repo into home directory and `cd` into it:

    cd && git clone https://github.com/ab7/dotfiles_mac.git && cd dotfiles_mac


Backup old dotfiles and symlink new ones, run:

    sh setup.sh


For vim install Vundle:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


Then open vim and run:

    :PluginInstall


YouCompleteMe is disabled by default because of its many dependencies. To install, uncomment `Plugin Valloric/YouCompleteMe` and consult the [documentation](//github.com/Valloric/YouCompleteMe) to set everything up.
