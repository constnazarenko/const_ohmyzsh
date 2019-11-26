ZSH_THEME_GIT_PROMPT_PREFIX="$FG[242]⎇ $FG[242]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[103]%} >>"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[105]%} ?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[227]%} *"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[202]%} »"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[124]%} ✖"
ZSH_THEME_GIT_PROMPT_STASHED="%{$FG[246]%} $"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[red]%} =%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[white]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[white]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[white]%} ↑↓%{$reset_color%}"

PROMPT="$FG[135]%n@%m $FG[141]%*
%(?:%{$fg[green]%}%d:%{$fg[red]%}%d)
%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $FG[239]($(git_prompt_info)$(git_prompt_status)$FG[239])
$FG[190]# %{$reset_color%}'

RPROMPT='%{$reset_color%}'