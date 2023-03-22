# :fzf-tab:complete:(\\|*/|)(kill|ps):(*|argument-rest) --preview-window=down:4:wrap
case $group in
'process ID')
  ps -p $word -w -o command=,%cpu=,%mem=,state=,start=,time= | bat --color=always -plsh
  lsof -p $word -w
  ;;
esac
