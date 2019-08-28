# VimIDE
Scripts and dependent Vim Plugins to setup effective Vim IDE for Source Code browsing. This repo
holds Vim Plugins and script to ease the Vim Plugins setup.

## 1. Vim Plugins
Below listed are the Vim Plugins added to make efficient IDE using Vim
    [Pathogen](https://github.com/tpope/vim-pathogen)
    [NERDTree](https://github.com/scrooloose/nerdtree)
    [Taglist](https://github.com/vim-scripts/taglist.vim)

## 2. Setup
- Clone this project then execute the below commands
```
cd VimIDE
./install_required_pkg.sh
./setup.sh
```
- `sudo` permission is needed to execute `install_required_pkg.sh`.

Note: Here `setup.sh` overides `~/.vimrc` with `vimrc` file present in this project. And also
it copies plugins listed on Section 1 to ~/.vim folder

