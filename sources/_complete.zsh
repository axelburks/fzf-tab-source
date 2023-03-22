# :fzf-tab:complete:*
# `${realpath#--*=}` aims to handle `--long-option=/the/path/of/a/file`
if [[ -e $realpath ]];then
  less ${realpath#--*=}
else
  echo ${desc#* -- } | bat --color=always -p -l ini
fi