#!/bin/bash

install_required_apt_pkg()
{
    apt install exuberant-ctags
    apt install cscope
    apt install vim-gui-common
    apt install vim-runtime
}

install_required_apt_pkg
