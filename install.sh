#/usr/bin/env bash
config=$HOME/.config/nvim
share=$HOME/.local/share/nvim


[ -f $config ] && echo "$cnofig exists as a file" && exit
[ -L $config ] && echo "$config exists as a symlink, point to `readlink -f /home/mikespook/.config/nvim`" && exit
[ -e $config ] && echo "$config exists as a broken symlink, point ot `readlink -f /home/mikespook/.config/nvim`" && exit

ln -s $config `pwd`/config
ln -s $share `pwd`/share
