use platform

if $platform:is-windows {
  echo "install git"
  scoop install main/git

  echo "install coreutils (ls/mv/cp/cat/date/...)"
  scoop install main/uutils-coreutils

  echo "install carapace for auto completion"
  scoop bucket add rsteube https://github.com/rsteube/scoop-bucket.git
  scoop install rsteube/carapace-bin
}
