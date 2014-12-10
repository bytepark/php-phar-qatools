#!/bin/bash

# creates symlinks in /usr/local/bin for all qa tools

targetpath=/usr/local/bin
lnpath=`which ln`

mylocation="$(readlink -fn -- "$0")"
mypath=`dirname $mylocation`

# loop all tools and create their symlink
for tool in `ls *.phar`; do
    binary=`echo ${tool} | sed "s/.phar//"`
    if [[ "$binary" =~ "phpcb-" ]]; then
	binary="phpcb"
    elif [[ "$binary" =~ "phpDocumentor" ]]; then
	binary="phpdoc"
    fi
    
    ${lnpath} -sf ${mypath}/${tool} ${targetpath}/${binary}
    echo "+ ${targetpath}/${binary}"
done
