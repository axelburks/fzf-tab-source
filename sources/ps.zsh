# :fzf-tab:complete:(\\|*/|)(kill|ps):(*|argument-rest) --preview-window=down:4:wrap
case $group in
'process ID')
  ps -ef $word | bat --color=always -plsh
  lsof -p $word -w
  ;;
esac
