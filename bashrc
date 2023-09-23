
# Estte snippet logra que no importemos el bashrc cuando se arranca una
#terminal no interactiva
case $- in
    *i*) ;;
      *) return;;
esac
#Importamos todos los sub archivos
#Aliases utiles
if [ -f ~/.config/bashrc/alias ];
then
    . ~/.config/bashrc/alias
fi
#Prompt para que la terminal se vea bien y sea extra util
if [ -f ~/.config/bashrc/promts ];
then
    . ~/.config/bashrc/promts
fi
#Exportar variables necesarias
if [ -f ~/.config/bashrc/exports ];
then
    . ~/.config/bashrc/exports
fi
#Funciones utiles (parecido a los alias)
if [ -f ~/.config/bashrc/functions ];
then
    . ~/.config/bashrc/functions
fi



##################################AUTOCOMPLETADO#####################
# esto es para usar el autocompletado de fzf
if [ -f /usr/share/fzf/completion.bash ];
then
source /usr/share/fzf/completion.bash
fi

if [ -f /usr/share/fzf/completion.bash ];
then
source /usr/share/fzf/key-bindings.bash
fi
# autocompletado para sudo man and wich
complete -cf sudo man wich;
#For arch
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

###########################################################################

####################################HISTORY MANAGEMENT#####################
# No agregar a el historial los comandos que empiecen con espacio ni los
# comando que sean duplicados
HISTCONTROL=ignoreboth
# agregar los comandos al historial sin sobreescribirlo
shopt -s histappend
# setea el ttamano de ttu history file:  see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=
HISTFILESIZE=
#No agregar al history ninguno de estos comandos:
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'
###########################################################################



# Hacer que la terminal sea mas "responsive"
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# modo vim en la terminal
#COMENTA ESTA LINEA SI NO ENTIENDES VIM
set -o vi



# Usar menucomplete al presionar tab para tener mejores resultados
# de completado
bind 'set show-all-if-ambiguous on';
bind 'TAB:menu-complete';
