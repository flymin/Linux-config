# Linux-config
configuration file for Linux 

### tmux configuration
```
tmux <~ 2.0
```
usage
```
curl -fsSL "https://github.com/flymin/Linux-config/raw/master/tmux-setup_ubuntu.sh" | /bin/sh
```

### vim configuration
To install [vim plug](https://github.com/junegunn/vim-plug), run
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
and prepare the `.vimrc` file, and then run these lines in vim
```
:PlugStatus
:PlugInstall
```

### other useful information
Directory for WSL: `C:\Users\%USERNAME%\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs`
