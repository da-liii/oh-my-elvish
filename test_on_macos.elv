use str

echo "-> checking binary: sed"
var sed_path = (search-external sed)
echo $sed_path
if (not (str:has-prefix $sed_path /opt/homebrew)) {
  fail "not using gnu sed"
}

echo "-> checking binary: base64"
var base64_path = (search-external base64)
echo $base64_path
if (not (str:has-prefix $base64_path /opt/homebrew)) {
  fail "not using uutils-core base64"
}

