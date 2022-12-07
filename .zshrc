# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
 
# export PATH="ª/opt/ros/humble/include:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/microchip/xc16/v2.00/bin:$PATH"
export PYTHONPATH="$PYTHONPATH:/home/andret/lib/python3.10/site-packages"
export PATH="/usr/local/MATLAB/R2022b/extern/include:$PATH"
export EDITOR='lvim' # define predefine editor


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# source .aliases file
source $HOME/.config/zsh/.aliases

# Ros2 shit

export COLCON_INCLUDE_PATH=/opt/ros/humble/include
export ROS_DOMAIN_ID=4
source $HOME/Install/ros2-humble/src/install/setup.zsh



# alias spotify='LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
# alias python2='python2.7'
# alias dot='cd ~/Documents/dotfiles/'
# alias FST='cd ~/Documents/FST/'
# alias FCP='cd ~/Documents/FCP/'
# alias software12='cd ~/Documents/FST/software12/'
# alias CANinterface='cd ~/Documents/FST/software12/fst-can-interface/ && sudo ./CANinterface'
# alias v='lvim'
# alias install='cd ~/Install/'

# ## Alias for wifi control ##

# alias scanwifi='nmcli dev wifi rescan && nmcli dev wifi list'
# alias telemetry24='nmcli dev wifi connect FST_Telemetry_2.4GHz'
# alias telemetry5='nmcli dev wifi connect FST_Telemetry_5GHz'
# alias eduroam='nmcli dev wifi connect eduroam'
# alias tplink='nmcli dev wifi connect TP-Link_B2AA'
#  
# alias open='evince'
# ## Open file from terminal ##
# Fix this to be a function that has auto complete :)
# _open()
# {
#    if [[ $#  > 0 ]] then
#         for i in "$@"
#         do
#             if [[ -a i ]] then 
#                 evince i
#             else
#                 echo "file $i does not exist"
#             fi
#           # echo "hello"
#         done  
#     else 
#         echo "You need to pass an argument to use this alias, since it cannot open a file that is no created"
#     fi
# }

