# If you come from bash you might have to change  $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to  oh-my-zsh installation.
export ZSH=/Users/julian/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="lambda"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set  language environment
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

export JAVA_HOME=/Library/Java/Home
export JAVA=
export HADOOP_HOME=/usr/local/Cellar/hadoop/
export HADOOP_MAPRED_HOME=$HADOOP_HOME # home to MapReduce module
export HADOOP_COMMON_HOME=$HADOOP_HOME # home to common module
export HADOOP_HDFS_HOME=$HADOOP_HOME # home to HDFS module
export YARN_HOME=$HADOOP_HOME # home to Yarn module
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop # path to configurations
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin # add Hadoop binaries to PATH

# For anaconda
export PATH="/Users/julian/anaconda2/bin:$PATH"
alias gpush="git push origin" 
alias gs="git status"
alias gdiff="git --no-pager diff --word-diff --color-words --staged"
alias gds='gdiff --staged'
alias gcom="git commit -m"
alias glog="git --no-pager log --oneline --graph" 
alias gb="git branch"
alias ga="git add"
alias kwm="nvim $HOME/.kwm/kwmrc" 
alias src="source ~/.zshrc" 
alias rkwm="brew services restart kwm"
alias vim="nvim"
alias ls="ls -G"
alias envim="nvim ~/.config/nvim/init.vim"
alias ozsh="nvim ~/.zshrc"
alias rkhd="brew services restart khd"
alias tf="source ~/tensorflow/bin/activate"
alias exitf="deactivate"

# P2 Instance
# SSH into instance
alias sshp2="ssh -i /Users/julian/.ssh/aws-key-fast-ai.pem ubuntu@ec2-34-213-124-88.us-west-2.compute.amazonaws.com"
# Stop instance 
alias p2stop="aws ec2 stop-instances --instance-ids i-0caa84e7b99dc31b1"
# Start instance
alias p2start="aws ec2 start-instances --instance-ids i-0caa84e7b99dc31b1"
# Reboot instance
alias p2reboot="aws ec2 reboot-instances --instance-ids i-0caa84e7b99dc31b1"
