function dashes {
  echo $COLUMNS
}

# Theming variables for primary prompt
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[242]⎇ $FG[242]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_bold[cyan]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
ZSH_THEME_GIT_PROMPT_UPSTREAM_NO_TRACKING="%{$fg_bold[red]%}!"
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[red]%}(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX="%{$fg[red]%})"
ZSH_THEME_GIT_PROMPT_DIVERGED=" %{$FG[255]%} ↑↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$FG[009]%}="
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}●"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[red]%}✚"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$FG[105]%}untracked"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$FG[078]%}add"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$FG[227]%}modified"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$FG[214]%}mov"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$FG[124]%}del"
ZSH_THEME_GIT_PROMPT_STASHED=" %{$FG[246]%}stash"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[103]%} >>"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔"

# Theming variables for the secondary prompt
ZSH_THEME_GIT_PROMPT_SECONDARY_PREFIX=""
ZSH_THEME_GIT_PROMPT_SECONDARY_SUFFIX=""
ZSH_THEME_GIT_PROMPT_TAGS_SEPARATOR=", "
ZSH_THEME_GIT_PROMPT_TAGS_PREFIX="🏷 "
ZSH_THEME_GIT_PROMPT_TAGS_SUFFIX=""
ZSH_THEME_GIT_PROMPT_TAG="%{$fg_bold[magenta]%}"

ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="↑"
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX="↓"

PROMPT="${FG[237]}\${(l.\$(dashes)..-.)}%{$reset_color%}$FG[141]
%(?:%{$FG[105]%}%d:%{$FG[124]%}%d)
%(?:%{$FG[105]%}:%{$FG[214]%})➜"
PROMPT+=' %{$FG[075]%}%c%{$reset_color%} $(git_prompt_info) $(git_commits_behind)$(git_commits_ahead) $(git_prompt_status)
$FG[078]# %{$reset_color%}'

RPROMPT=" ${FG[237]}%* %n@%m%{$reset_color%}"