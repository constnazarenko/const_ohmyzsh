# const_ohmyzsh
My custom theme for Oh-my-zsh

## Installation

* Go to
```zsh
cd ~/.oh-my-zsh/custom/themes/
```
* Clone this project
```zsh
git clone git@github.com:constnazarenko/const_ohmyzsh.git
```
* Create a symbolic link to the theme file
```zsh
ln -s const_ohmyzsh/const.zsh-theme const.zsh-theme
```
* Find the line `ZSH_THEME="robbyrussell"` replace `robbyrussell` with `const` in `~/.zshrc` file
```zsh
ZSH_THEME="const"
```

## Features

* User name
* Machine name
* Current time
* Full path to current working directory
* Current working directory
* Git branch
* Git status
    * `>>` —— Dirty branch
    * `✚` —— Added files
    * `✖` —— Deleted files
    * `*` —— Modified files
    * `>` —— Renamed files
    * `=` —— Unmerged changes
    * `?` —— Untracked changes
    * `$` —— Stashed changes
    * `n↑` —— Branch is ahead by n commits
    * `n↓` —— Branch is behind by n commits
    * `↑↓` —— Branch is divered
* Prompt indicator and full path turns red if the last run fails

## License

The MIT License.