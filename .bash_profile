## Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

## Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

## Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

## List all files colorized in long format
alias ll='ls -lh'

## List all files colorized in long format, including dot files
alias la="ls -lha"

## List only directories
alias lsd='ls -l | grep "^d"'

## Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

## Get rid of command not found
alias cd..='cd ..'

## A quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias home="cd ~"
alias Home="cd ~"
alias projects="cd ~/Projects/"
alias Projects="cd ~/Projects/"
alias downloads="cd ~/Downloads/"
alias Downloads="cd ~/Downloads/"
alias desktop="cd ~/Desktop/"
alias Desktop="cd ~/Desktop/"

## Open in chrome
alias chrome="open -a 'Google Chrome'"

## Git aliases
alias gac="git add . && git commit -am"
alias gpd="git push origin develop"
alias gpm="git push origin master"

## Get your current public IP
alias ip="curl icanhazip.com"

## Shutdown your computer like a badass
alias shutdown="sudo shutdown -h now"

## Move to trash
function del()
{
  mv "$@" "~/.Trash/"
}

## websites
alias facebook="open -a 'Google Chrome' http://facebook.com/"
alias instagram="open -a 'Google Chrome' http://instagram.com/"
alias medium="open -a 'Google Chrome' http://medium.com/"

## Recursive touch
alias touchall="find . -exec touch {} \;"

