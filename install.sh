#!/bin/bash
FULLPATH=$(cd $(dirname ${0});pwd)
cd $FULLPATH

for NAME in `find . -not -name "install.sh" -not -name "." -not -type d | sed -e "s#./##"`;
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
