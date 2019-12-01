#!/bin/bash
#Setting
IFS=$'\n'
separate='@'

#Change current dir to repo base
cd $(dirname $0)

#Create backup dir
mkdir -p ${HOME}/dotfile/backup/$(date +%Y%m%d%H%M%S)/
BACKUPDIR=$_

#Symlink loop
for SOURCEFILE in $(find `pwd`/unix -type f );
do
  DESTFILE=$(echo ${SOURCEFILE} | sed -e 's@'$(pwd)/unix/'@'${HOME}/'@')
  
  #Backup old dotfile
  mv ${DESTFILE} ${BACKUPDIR}

  #Directory check
  if [ ! -d $(dirname ${DESTFILE}) ];
  then
    mkdir -p $(dirname ${DESTFILE})
  fi

  #Do symlink
  ln -s ${SOURCEFILE} ${DESTFILE}
done
