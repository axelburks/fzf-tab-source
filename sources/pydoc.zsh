# :fzf-tab:complete:(\\|*/|)pydoc(|3*):argument-rest
case $group in
option)
  ;;
*)
  pydoc $word | bat --color=always -plman
  ;;
esac
