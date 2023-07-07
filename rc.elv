use platform

if (eq $platform:os windows) {
  set paths = [
    C:\Windows\System32
    C:\Windows\System32\WindowsPowerShell\v1.0
    C:$E:HOMEPATH\scoop\shims
  ] 
} elif (eq $platform:os darwin) {
  set paths = [
    /bin
    /usr/bin
    /usr/local/bin
    /opt/homebrew/bin
    $E:HOME/bin
  ]
} else {
  set paths = [
    /bin
    /usr/bin
    $E:HOME/bin
  ]
}

use readline-binding

eval (carapace _carapace|slurp)

if $platform:is-windows {
  fn tig {|@a| $E:HOMEPATH\scoop\apps\git\current\usr\bin\tig $@a }
}

