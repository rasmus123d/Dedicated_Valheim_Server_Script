#!/bin/bash
# Sanity Check
#    #######################################################
echo "$(tput setaf 4)-------------------------------------------------------"
echo "$(tput setaf 0)$(tput setab 7)Since we need to run the menu with elevated privileges$(tput sgr 0)"
echo "$(tput setaf 0)$(tput setab 7)Please enter your password now.$(tput sgr 0)"
echo "$(tput setaf 4)-------------------------------------------------------"
#    ###################################################### 
[[ "$EUID" -eq 0 ]] || exec sudo "$0" "$@"




########################################################################
#############################Set COLOR VARS#############################
########################################################################

NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
CLEAR='\e[0m'

##
# Color Functions
##
ColorRed(){ 
        echo -ne $RED$1$CLEAR 
}
ColorGreen(){
         echo -ne $GREEN$1$CLEAR
}
ColorOrange(){
	echo -ne $ORANGE$1$CLEAR
}
ColorBlue(){
	echo -ne $BLUE$1$CLEAR
}
ColorPurple(){
	echo -ne $PURPLE$1$CLEAR
}
ColorCyan(){
	echo -ne $CYAN$1$CLEAR
}
ColorLightRed(){
	echo -ne $LIGHTRED$1$CLEAR
}
ColorLightGreen(){
	echo -ne $LIGHTGREEN$1$CLEAR
}
ColorYellow(){
	echo -ne $LIGHTYELLOW$1$CLEAR
}
ColorWhite(){
	echo -ne $WHITE$1$CLEAR
}



# Add new SSH User
# Disable Root from SSH logins
# Email settings to User
# Turn on ufw firewall
# set default ports
# Add ability for user to add remove ports
# Display listening ports
# Display External IP 
# Display Internal IP
# Show if connected to internet

#Install/verify Fail2Ban, nettools, other stuff



########################################################################
##########################Security Menu System##########################
########################################################################
menu(){
#get_current_config
clear
menu_header
echo -ne "
$(ColorOrange '-------------Security Menu-----------')
$(ColorOrange '-')$(ColorGreen ' 1)') Security Checks
$(ColorOrange '--------------Stuff-----------')
$(ColorOrange '-')$(ColorGreen ' 2)') stuff 
$(ColorOrange '-')$(ColorGreen ' 3)') stuff 
$(ColorOrange '-')$(ColorGreen ' 4)') stuff 
$(ColorOrange '-')$(ColorGreen ' 5)') stuff 
$(ColorOrange '-')$(ColorGreen ' 6)') stuff 
$(ColorOrange '------------------------------------------------')
$(ColorGreen ' 0)') Exit
$(ColorOrange '------------------------------------------------')
$(ColorPurple 'Choose an option:') "
        read a
        case $a in
	        1) stuff ; menu ;;
		      2) stuff ; menu ;;
		      3) stuff ; menu ;;
		      4) stuff ; menu ;;
		      5) stuff ; menu ;;	
	        6) stuff ; menu ;;
		    0) exit 0 ;;
		    *)  echo -ne " $(ColorRed 'Wrong option.')" ; menu ;;
        esac
fi
}

menu
