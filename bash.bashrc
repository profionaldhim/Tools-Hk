command_not_found_handler() {
	/data/data/com.termux/files/usr/libexec/termux/command-not-found $1
	return 0
}

clear

red='\e[1;31m'
green='\e[1;32m'
blue='\e[1;34m'
purple='\e[1;35m'
cyan='\e[1;36m'
white='\e[1;37m'
yellow='\e[1;33m' 
toilet -f term -F border --gay "WELCOME To The Channel MOHAMMED INFO TERMUX"
echo -e $red
figlet -f slant "M . INFO"
echo -e $green"--------------$yellow( Hacker Termux )$green--------------" 
echo -e $yellow
echo -e "By =====> $red HACKER / MOHAMMED INFO"
#echo PS1="$green\#-M.Info-#"
echo ""
echo -e $green '*************************************************'
echo ""



PS1="\#-root@M-Info-#"

