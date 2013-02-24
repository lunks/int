if [[ ! -o interactive ]]; then
    return
fi

compctl -K _int int

_int() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(int commands)"
  else
    completions="$(int completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
