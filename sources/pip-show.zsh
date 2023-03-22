# :fzf-tab:complete:(\\|*/|)pip(|3*):*
case $group in
'pip subcommand')
  pip_help_desc=$(pip help $word 2>/dev/null)
  if [[ -n $pip_help_desc ]]; then
    echo $pip_help_desc | bat --color=always -plhelp
  else
    echo ${desc#* -- } | bat --color=always -p -l ini
  fi
  ;;
'option')
  echo ${desc#* -- } | bat --color=always -p -l ini
  ;;
*)
  pip show $word | bat --color=always -plyaml
  ;;
esac

