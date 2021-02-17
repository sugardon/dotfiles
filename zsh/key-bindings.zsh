# use vi mode
bindkey -v

# 一つ前のコマンド
bindkey -M viins "^N"  down-line-or-history
# 次のコマンド
bindkey -M viins "^P"  up-line-or-history
# 行頭に移動
bindkey -M viins '^A'  beginning-of-line
# 行末に移動
bindkey -M viins '^E'  end-of-line
# BackSpace
bindkey -M viins "^?" backward-delete-char
# 行削除
bindkey -M viins "^K"  kill-line

