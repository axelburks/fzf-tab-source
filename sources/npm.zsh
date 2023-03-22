# :fzf-tab:complete:(\\|*/|)npm:*
case $group in
'file')
  exa -la $word
  ;;
*)
  if [[ $word == -* ]]; then
    echo $word
  else
    npm help -l $word | bat --color=always -plmarkdown
  fi
  ;;
esac