# :fzf-tab:complete:((-parameter-|unset):|(export|typeset|declare|local):argument-rest)
# -brace-parameter- will `fork/exec /usr/bin/zsh: invalid argument`
if [ "x$(echo ${(P)word})" != "x" ]; then
  echo ${(P)word}
else
  source ~/.zshrc && echo ${(P)word}
fi