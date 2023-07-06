use platform
use path
use epm

epm:install github.com/xiaq/edit.elv

if $platform:is-windows {
  echo "install git"
  scoop install main/git

  echo "install coreutils (ls/mv/cp/cat/date/...)"
  scoop install main/uutils-coreutils

  mkdir -p $E:APPDATA/elvish/
  cp rc.elv $E:APPDATA/elvish/
} else {
  mkdir -p ~/.config/elvish/
  cp rc.elv ~/.config/elvish/
}

