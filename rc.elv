use platform

if $platform:is-windows {
  set paths = [
    C:\Windows\System32
    C:\Windows\System32\WindowsPowerShell\v1.0
    C:$E:HOMEPATH\scoop\shims
  ] 
} else {
  set paths = [
    /bin
    /usr/bin
    $E:HOME/bin
  ]
}
use readline-binding

use github.com/xiaq/edit.elv/compl/git
git:apply

if $platform:is-windows {
  fn tig {|@a| $E:HOMEPATH\scoop\apps\git\current\usr\bin\tig $@a }
}
