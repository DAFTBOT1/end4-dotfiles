# Ryoku palette for fish and fzf. Rendered by the theme daemon; do not edit.
#
# Dropped straight into conf.d, which fish sources on its own, so nothing in the
# shipped config has to include it. Your ~/.config/fish/user.fish loads last and
# still wins.

# Syntax highlighting.
set -g fish_color_normal ABB2BF
set -g fish_color_command 61AFEF
set -g fish_color_keyword 56B6C2
set -g fish_color_quote C678DD
set -g fish_color_redirection 828997
set -g fish_color_end 56B6C2
set -g fish_color_error E06C75
set -g fish_color_param ABB2BF
set -g fish_color_comment 828997
set -g fish_color_selection --background=31363F
set -g fish_color_operator 56B6C2
set -g fish_color_escape C678DD
set -g fish_color_autosuggestion 828997
set -g fish_color_cancel E06C75
set -g fish_color_search_match --background=31363F
set -g fish_color_valid_path --underline

# Completion pager.
set -g fish_pager_color_progress 828997
set -g fish_pager_color_prefix 61AFEF
set -g fish_pager_color_completion ABB2BF
set -g fish_pager_color_description 828997
set -g fish_pager_color_selected_background --background=31363F

# fzf takes the same palette, so Ctrl-R and Ctrl-T match the terminal they open
# in. Appended to whatever options are already set rather than replacing them.
set -gx FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS \
--color=fg:#ABB2BF,bg:-1,hl:#61AFEF \
--color=fg+:#ABB2BF,bg+:#31363F,hl+:#61AFEF \
--color=info:#C678DD,prompt:#61AFEF,pointer:#56B6C2 \
--color=marker:#56B6C2,spinner:#C678DD,header:#828997 \
--color=border:#5C6370"
