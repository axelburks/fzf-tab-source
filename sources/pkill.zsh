# :fzf-tab:complete:(\\|*/|)(pkill:o-argument-rest|killall:argument-rest)
case $group in
'pattern matching process name')
  pgrep $word | xargs ps -w -o pid,command -p | bat --color=always -plhelp
  ;;
*)
  echo ${desc#* -- } | bat --color=always -p -l help
  ;;
esac