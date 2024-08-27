#!/bin/bash
FULLPATH=$(cd $(dirname ${0});pwd)
cd $FULLPATH

for NAME in `find . -type d -name '.git' -prune -o -type f -a -not -name "install.sh" -print | sed -e "s#./##"`;
do
    if [ ! -d $(dirname ${HOME}/${NAME}) ]
    then
        mkdir -p $(dirname ${HOME}/${NAME})
    fi
    if [ -f ${HOME}/${NAME} ]
    then
        rm -i ${HOME}/${NAME}
        ln -s ${FULLPATH}/${NAME} ${HOME}/${NAME}
    else
       ln -s ${FULLPATH}/${NAME} ${HOME}/${NAME}
    fi
done
