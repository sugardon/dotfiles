# use vi mode
bindkey -v

# 行頭に移動
bindkey -M viins '^A'  beginning-of-line
# 行末に移動
bindkey -M viins '^E'  end-of-line
# BackSpace
bindkey -M viins "^?" backward-delete-char
# 行削除
bindkey -M viins "^K"  kill-line

