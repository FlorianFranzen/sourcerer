srcr() {
  if [ -z "$1" ]; then
    echo "usage: $0 <group>"
    return
  fi

  local grp_path="$HOME/.srcr/$1"

  if [ ! -d "$grp_path" ]; then
    echo "no such source group folder '$1'"
    return
  fi

  for subconf in $(find "$grp_path" -name "*.zsh"); do
    source $subconf
  done
}

_srcr() {
  local groups
  groups=()
  for group in $(find "$HOME/.srcr" -mindepth 1 -maxdepth 1 -type d); do
    groups+=("${group##*/}")
  done
  _describe 'groups' groups
  return 0
}

compdef _srcr srcr
