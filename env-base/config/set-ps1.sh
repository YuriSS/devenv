#!/bin/bash
COLOR_RED="\033[0;31m"    
COLOR_YELLOW="\033[0;33m"    
COLOR_GREEN="\033[0;32m"    
COLOR_OCHRE="\033[38;5;95m"    
COLOR_BLUE="\033[0;34m"    
COLOR_WHITE="\033[01;32m"    
COLOR_RESET="\033[0m"    
    
rightprompt()    
{    
  printf "%*s" $COLUMNS "[ container ]"                 
}                                                                             
                                                                        
function git_color {                   
  local git_status="$(git status 2> /dev/null)"      
                           
  if [[ $git_status =~ "nothing to commit" ]]; then                             
    echo -e $COLOR_GREEN                                                     
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then    
    echo -e $COLOR_YELLOW             
  elif [[ $git_status =~ "Changes not staged for commit" ]]; then                            
    echo -e $COLOR_YELLOW                           
  elif [[ $git_status =~ "Untracked files" ]]; then              
    echo -e $COLOR_YELLOW                                        
  else                                                                   
    echo -e $COLOR_RED                
  fi                                    
}

source /root/.config/git-prompt.sh

PS1="${debian_chroot:+($debian_chroot)}\[$COLOR_WHITE\]\[$(tput sc; rightprompt; tput rc)\][\h] \u in \[$COLOR_RESET\]\[$COLOR_BLUE\] \W\[$COLOR_RESET\]\[\$(git_color)\]$(__git_ps1 ' ( %s)')\[$COLOR_RESET\]\n\[$COLOR_WHITE\]ﬦ \[$COLOR_RESET\]"
