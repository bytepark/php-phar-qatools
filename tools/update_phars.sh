#!/bin/bash


wget -O pdepend.phar http://static.pdepend.org/php/latest/pdepend.phar
# phpcb does not have a version independent url
wget -O phpcbf.phar https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
wget -O phpcpd.phar https://phar.phpunit.de/phpcpd.phar
wget -O php-cs-fixer.phar http://get.sensiolabs.org/php-cs-fixer.phar
wget -O phpcs.phar https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
wget -O phpdcd.phar https://phar.phpunit.de/phpdcd.phar
wget -O phpDocumentor.phar http://www.phpdoc.org/phpDocumentor.phar
wget -O phpdox.phar http://phpdox.de/releases/phpdox.phar
wget -O phploc.phar https://phar.phpunit.de/phploc.phar
# phpmd - does not have a version-independent url
wget -O phpunit.phar https://phar.phpunit.de/phpunit.phar
