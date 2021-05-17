#/usr/bin/env bash
config=$HOME/.config/nvim
share=$HOME/.local/nvim/share/nvim/site/autoload/


[ -f $config ] && echo "$cnofig exists as a file" && exit
[ -L $config ] && echo "$config exists as a symlink, point to `readlink -f $config`" && exit
[ -e $config ] && echo "$config exists as a broken symlink, point ot `readlink -f $config`" && exit

ln -s `pwd`/config $config
wget -O $share https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
