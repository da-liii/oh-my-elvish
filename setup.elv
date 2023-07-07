use platform

if $platform:is-windows {
  mkdir -p $E:APPDATA/elvish/
  cp rc.elv $E:APPDATA/elvish/
} else {
  mkdir -p ~/.config/elvish/
  cp rc.elv ~/.config/elvish/
}

