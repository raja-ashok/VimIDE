#!/bin/bash

install_required_apt_pkg()
{
  apt install exuberant-ctags -y
  apt install cscope -y
  apt install vim-gui-common -y
  apt install vim-runtime -y
}

install_required_apt_pkg
