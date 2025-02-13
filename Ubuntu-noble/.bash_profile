#!/bin/bash
#set Environment variables

for CONF in $(find ~/.config/bash -name *.bash_profile);
do
    source ${CONF}
done

source ${HOME}/.bashrc
