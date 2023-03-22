# :fzf-tab:complete:(\\|*/|)man:
[[ $group == 'manual page' ]] && MANWIDTH=$FZF_PREVIEW_COLUMNS man $word | bat --color=always -plman
