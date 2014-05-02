#!/bin/bash
# collects all version information and puts them into the README

return=""

# hack for phpcb which does not have a working version string
phpcbversion=`ls phpcb* |sed "s/phpcb-//" |sed "s/.phar//"`

# use all tools to get their version string
for tool in `ls *.phar`; do
    output=`php $tool --version | sed "s/ version//" |cut -d " " -f 1-2`
    if [ "$output" == "Console Tool" ]; then
	return="${return}\n* phpcb ${phpcbversion}"
    else
	return="${return}\n* ${output}"
    fi
done

sed -i '/tools:/,$d' README.md

echo -e  "Included tools:\n$return" >> README.md

