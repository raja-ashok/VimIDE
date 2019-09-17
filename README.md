# VimIDE
Scripts and dependent Vim Plugins to setup effective Vim IDE for Source Code browsing. This repo
holds Vim Plugins and script to ease the Vim Plugins setup.

## 1. Vim Plugins
Below listed are the Vim Plugins added to make efficient IDE using Vim
- [Pathogen](https://github.com/tpope/vim-pathogen)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Taglist](https://github.com/vim-scripts/taglist.vim)
- [Tabular](https://github.com/godlygeek/tabular)

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

## 3. Usage

### 3.1 Ctags Usage
- `ctags -R .` generates tags of all supported format file's symbol to `tags` file.
- On Vim, after placing the cursor on a symbol pressing `ctrl+]` takes to the symbol definition.
- To come back `ctrl+t`.

### 3.2 Cscope Usage
- `cstags regen .` generates cscope tags in `csope` file.
- On Vim, after placing the cursor on a symbol pressing `ctrl+\` and then `s` lists the references
of the symbol. This can be done by `:cs f s <symbol_name>`.
- Entering the index takes to the place, and to come back `ctrl+t`.

### 3.3 NERDTree Usage
- `ctrl+n` opens the current folder structure on right side panel.

### 3.4 Taglist Usage
- `ctrl+l` opens the current file's symbol list on left side panel.

### 3.5 Tabular Usage
- `:Tabularize /=` to align variable initialization by placing `=` on same column.
- This can be done by selecting string on visual mode also.
- For more info check [here](http://vimcasts.org/episodes/aligning-text-with-tabular-vim/).

