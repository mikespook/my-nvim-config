#/usr/bin/env bash
config=$HOME/.config/nvim
share=$HOME/.local/share/nvim


[ -f $config ] && echo "$cnofig exists as a file" && exit
[ -L $config ] && echo "$config exists as a symlink, point to `readlink -f $config`" && exit
[ -e $config ] && echo "$config exists as a broken symlink, point ot `readlink -f $config`" && exit

[ -f $share ] && echo "$share exists as a file" && exit
[ -L $share ] && echo "$share exists as a symlink, point to `readlink -f $share`" && exit
[ -e $share ] && echo "$share exists as a broken symlink, point ot `readlink -f $share`" && exit

ln -s `pwd`/config $config
ln -s `pwd`/share $share
