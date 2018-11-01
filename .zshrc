# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ANT.AMAZON.COM/jddoming/.oh-my-zsh"
export ENV_ENHANCEMENTS=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="lambda"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Contains all sensitive information.
source $HOME/credentials.sh

alias src="source $HOME/.zshrc"
alias ozsh="vim $HOME/.zshrc"

# Lab126
alias swfos="$HOME/scripts/jdk_switch.sh"
alias fbd="fastboot devices"
alias adbd="adb devices"
alias adbs="adb shell"
alias tarunzip="tar -xzvf"
alias tarzip="tar -zcvf"
alias vim="nvim"

# Git
alias gs="git status"
alias gcom="git commit -m"
alias gcoms="git commit --signoff"
alias gcomprev="git commit --edit -m'$(git log --format=%B --reverse HEAD..HEAD@{2})'"
alias ga="git add"
alias gpush="git push origin"
alias gpushmain=$fos6_mainline_push
alias gpushmaindev="$fos6_maindev_push"
alias gdiff="git --no-pager diff --word-diff --color-words --staged"
alias gpull="git pull origin"

# Test machine
alias sshtest="ssh test@u6451064a0bdd5a3ab675"

# Ease of use
alias copy="xclip -sel clip"

# Leetcode / Prep
alias lc="leetcode"
alias lclogin="printf '$leetcode_username\n$leetcode_password' | leetcode user -l"
alias lcl="lc list"
alias lcomp="lcl -t"
alias lct="lc test"
alias lcs="lc submit"
alias lcp="leetcode show $1 -gx -e nvim -l python3"
alias lcp27="leetcode show $1 -gx -e nvim -l python"
alias lcsub="lc submission"
#alias lcprint="echo "sed 's/\\n/\n/g'" | copy"
alias lchome="cd $HOME/git/interview_prep"

# EPI
alias mvepi="cp $1 awk '{$HOME/git/interview_prep/epi/ch$2/}'"

# FB Messenger
alias fb="fb-messenger-cli"

# VPN
alias vpn="/opt/cisco/anyconnect/bin/vpnui"

# nvim
alias vimconf="vim $HOME/.config/nvim/init.vim"

# Go to FOS6 repo
alias f6="cd $HOME/fos6"

# App-UX
alias hlc="cd $hlcont"

# KATS
alias testloc="echo /home/test/jddoming/testcases/test_echo.py | copy"
alias testconf="echo rootDir=/home/test/jddoming/testcases/ | copy"
alias reg="echo $devreg | copy"
alias unreg="echo $devunreg | copy"
alias ww="echo $ww | copy"

# Gerrit
alias cpick="python $HOME/scripts/cpicker.py"

# Remove swap
alias rmswap="rm $swap_area"

# Shortcuts
alias dirlen="ls . | wc -l"
alias reclen="find . -type f | wc -l"
