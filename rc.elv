set E:PATH = /bin:/usr/bin:$E:HOME/bin
use readline-binding

use github.com/muesli/elvish-libs/theme/powerline
set edit:prompt-stale-transform = {|x| put $x }
set edit:rprompt-stale-transform = {|x| put $x }

use github.com/xiaq/edit.elv/compl/git
