# oh-my-elvish
## Get Elvish
Here is the guide to install elvish and set it as your default shell:
https://elv.sh/get/

## Installation
Note, the following script must be executed in a elvish shell:
``` shell
use epm
epm:install github.com/muesli/elvish-libs
epm:install github.com/xiaq/edit.elv # you need to checkout the older version manually

git clone https://github.com/darcy-shen/oh-my-elvish.git
mv ~/.config/elvish ~/.config/elvish_bak
mv oh-my-elvish ~/.config/elvish
```
