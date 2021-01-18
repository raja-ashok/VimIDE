#!/bin/bash

VIM_ROOT_PATH=~/.vim
VIMRC=~/.vimrc
VIMRC_CUR=./vimrc
CSCOPETAGS=cstags
EXTENDED_CTAGS=ectags
HOME_LOC_BIN=~/.local/bin

PATHOGEN_PKG_DIR=./pathogen/autoload
PATHOGEN_PATH=~/.vim/autoload
PATHOGEN=pathogen.vim

copy_pathogen()
{
  if [ ! -f ${PATHOGEN_PATH}/${PATHOGEN} ]; then
    if [ ! -d ${PATHOGEN_PATH} ]; then
      mkdir -p ${PATHOGEN_PATH}
      echo "Created director ${PATHOGEN}"
    fi
    cp ${PATHOGEN_PKG_DIR}/${PATHOGEN} ${PATHOGEN_PATH}/
    echo "Copied Pathogen ${PATHOGEN_PKG_DIR}/${PATHOGEN}"
  fi
  cp ${VIMRC_CUR} ${VIMRC}
  echo "Copied vimrc file"
}

copy_plugins()
{
  cp ./bundle ${VIM_ROOT_PATH}/ -rf
  cp ./plugins ${VIM_ROOT_PATH}/ -rf
  echo "Copied plugins"
  ls ./bundle
}

create_home_loc_bin()
{
  if [ ! -d ${HOME_LOC_BIN} ]; then
    mkdir -p ${HOME_LOC_BIN}
    echo "PATH=${HOME_LOC_BIN}:\$PATH" >> ~/.bashrc
    echo "Created ${HOME_LOC_BIN}"
  fi
}

copy_bins()
{
  cp ${CSCOPETAGS} ${EXTENDED_CTAGS} ${HOME_LOC_BIN}
  echo "Copied ${CSCOPETAGS} ${EXTENDED_CTAGS} to ${HOME_LOC_BIN}"
}

do_setup()
{
  create_home_loc_bin
  copy_pathogen
  copy_plugins
  copy_bins
}

do_setup

