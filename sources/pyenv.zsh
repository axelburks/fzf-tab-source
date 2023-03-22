# :fzf-tab:complete:pyenv*
case $group in
'command')
  pyenv help $word | bat --color=always -plhelp
  ;;
'arg')
  echo ${desc#* -- } | bat --color=always -p -l ini 
  ;;
esac
