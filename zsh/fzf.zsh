fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}
zle     -N     fzf-history-widget-accept
bindkey '^R' fzf-history-widget-accept


fzf-file-widget-accept() {
  fzf-file-widget
  zle accept-line
}
zle     -N     fzf-file-widget-accept
bindkey '^T' fzf-file-widget-accept


# fzf-completion-accept() {
#   fzf-completion
#   zle accept-line
# }
# zle     -N     fzf-completion-accept
# bindkey '\t' fzf-completion-accept
