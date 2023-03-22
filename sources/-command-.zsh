# :fzf-tab:complete:((-command-:|command:option-(v|V)-rest)|(\\|*/|)type:*)
case $group in
'external command')
  less =$word
  man_desc=$(MANWIDTH=$FZF_PREVIEW_COLUMNS man "$word") 2>/dev/null && echo $man_desc | bat --color=always -plman
  ;;
'executable file')
  less ${realpath#--*=}
  ;;
'builtin command')
  run-help $word | bat --color=always -plman
  ;;
'reserved word')
  type $word | bat --color=always -pl.zshrc
  ;;
'shell function'|'alias')
  source ~/.zshrc && which $word | bat --color=always -pl.zshrc
  ;;
'parameter')
  echo ${(P)word}
  ;;
*)
  echo $desc | bat --color=always -p -l help
  ;;
esac
# '(out=$(tldr --color always "$word") 2>/dev/null && echo $out) || (out=$(MANWIDTH=$FZF_PREVIEW_COLUMNS man "$word") 2>/dev/null && echo $out) || (out=$(which "$word") && echo $out) || echo "${(P)word}"'