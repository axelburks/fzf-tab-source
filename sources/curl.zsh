# :fzf-tab:complete:(\\|*/|)curl:argument-rest
curl_protocal=$(echo "$word" | awk -F ':' '{print $1}') && curl --help ${curl_protocal} 2>/dev/null | bat --color=always -plyaml