#!/bin/bash
# collects all version information and puts them into the README

return=""

# hack for phpcb which does not have a working version string
phpcbversion=`ls phpcb-* |sed "s/phpcb-//" |sed "s/.phar//"`

# use all tools to get their version string
for tool in `ls *.phar`; do
    output=`php $tool --version | sed "s/ version//" |cut -d " " -f 1-2`

    if [ "$output" == "Console Tool" ]; then
	return="${return}\n* phpcb ${phpcbversion}"
    elif [ "$tool" == "phpcbf.phar" ]; then
	line=`echo "${output}" | sed "s/PHP_CodeSniffer/PHP Code Beautifier and Fixer/"`
	return="${return}\n* ${line}"
	x=1
    else
	return="${return}\n* ${output}"
    fi
done

sed -i '/tools:/,$d' README.md

echo -e  "Included tools:\n$return" >> README.md

