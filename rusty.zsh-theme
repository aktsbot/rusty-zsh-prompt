# Rusty - A zsh prompt theme for oh-my-zsh with material-theme flare
# Credits:
#  https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/robbyrussell.zsh-theme
#  https://github.com/dikiaap/dotfiles/blob/master/.oh-my-zsh/themes/oxide.zsh-theme

# use extended color palette if available.
if [[ "${terminfo[colors]}" -ge 256 ]]; then
    turquoise="%F{73}"
    orange="%F{179}"
    purple="%F{140}"
    red="%F{167}"
    limegreen="%F{107}"
else
    turquoise="%F{cyan}"
    orange="%F{yellow}"
    purple="%F{magenta}"
    red="%F{hotpink}"
    limegreen="%F{green}"
fi

# turn the prompt symbol red, if last command errored out
local ret_status="%(?:%{$white%}$ :%{$red%}$ )"

PROMPT=$'
%{$limegreen%}%~%{$reset_color%} $(git_prompt_info)
${ret_status}%f'

# git => $git_icon $git_branch $git_status
ZSH_THEME_GIT_PROMPT_PREFIX="%{$turquoise%} %{$purple%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$turquoise%} %{$orange%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$turquoise%}"
