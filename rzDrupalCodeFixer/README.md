YA-Drupal-Code-Standard-Fixer
=============================

Yet another durpal code standard fixer

  Manually fixing coding standard is tedious, so this tool tries to do part
of the dirty job. 

  Use this as a compliment of your favorite IDE, and do a git diff after fix
is recommanded. 


## Installation

1) git clone https://github.com/robin-zhao/YA-Drupal-Code-Standard-Fixer.git

2) edit ~/.bashrc add YA-Drupal-Code-Standard-Fixer folder to $PATH

3) source ~/.bashrc

4) drupalFixer PHPFILE


## FEATURES

 - trim tailing spaces.
 - trim duplicated empty lines.
 - prepend dummy file doc, function/method doc.
 - add necessay space before open parenthise and after close parenthise.
 - convert camelCase variable into lowercase and underscore sperated format.
 - add space before/after concat operator.
 - convert null/false/true into upper case.
 - add space after comma.
 - replace tab by 2 spaces.
 - replace private keyword by protected.
 - split else keyword into next line.

