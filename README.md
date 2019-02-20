Some bare-bones configuration files for my personal use.

## Required setup
Clone this repository.
```
git clone https://github.com/jgroh/dotfiles ~
```

### vim

Create symbolic link to vimrc file.
```
ln -sf dotfiles/vimrc ~/.vimrc
```

Install vim-plug.
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

From within vim, run `:PlugInstall`.
