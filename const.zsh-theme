function git_prompt_status_wrapped() {
	local GITINFO=$(git_prompt_info)
	local GITSTATUS=""
	local GITWRAPPED=""
	if [[ $GITINFO ]]; then
		GITSTATUS=$(git_prompt_status)

		if [[ $GITSTATUS ]]; then
			GITSTATUS=" $FG[250][$GITSTATUS$FG[250]]"
		fi

		GITWRAPPED="$FG[239]($GITINFO$GITSTATUS$FG[239])%{$reset_color%}"
	fi
	echo $GITWRAPPED
}

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[242]⎇ $FG[242]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[103]%} >>"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[105]%}?"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[227]%}*"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[226]%}>"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[124]%}✖"
ZSH_THEME_GIT_PROMPT_STASHED="%{$FG[246]%}$"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[009]%}="
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[white]%}$(git_commits_ahead)↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[white]%}$(git_commits_behind)↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[white]%} ↑↓%{$reset_color%}"

PROMPT="$FG[135]%n@%m $FG[141]%*
%(?:%{$fg[green]%}%d:%{$fg[red]%}%d)
%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_status_wrapped)
$FG[190]# %{$reset_color%}'

RPROMPT='%{$reset_color%}'