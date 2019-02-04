#!/bin/bash

VIM_ROOT_PATH=~/.vim
VIMRC=~/.vimrc
VIMRC_CUR=./vimrc

PATHOGEN_PKG_DIR=./vim-pathogen/autoload
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
}

do_setup()
{
    copy_pathogen
    copy_plugins
}

do_setup

