use platform
use path
use epm

epm:install github.com/xiaq/edit.elv

if $platform:is-windows {
  mkdir -p $E:APPDATA/elvish/
  cp rc.elv $E:APPDATA/elvish/
} else {
  mkdir -p ~/.config/elvish/
  cp rc.elv ~/.config/elvish/
}
