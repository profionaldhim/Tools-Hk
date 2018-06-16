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
figlet -f slant "HK-Tools" 
echo -e $green"-------------------------------------------"
toilet "YEMEN" | lolcat
echo -e $green"--------------$yellow(2 in 1) ---------------"
echo -e $yellow "By =====> $red HACKER / MOHAMMED Info <====="
echo ''
echo -e $green   "1- Tools-Gnuroot"
echo ""
echo -e $green   "2- Tools-Termux"
echo ""
echo -e $green   "3- About me"
echo ""
echo -e $green   "0- EXIT"
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim" 
echo -e $red 
figlet -f slant "HK-Tools" 
echo -e $green"-----------------------------------" 
toilet "YEMEN" | lolcat 
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $Ddos = 2 ]
then
clear
echo -e $red
figlet "Hammer"
cd ~
git clone https://github.com/cyweb/hammer.git
bash Hk-Tools.sh
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
curl 
https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb 
>msfinstall && \
chmod 755 msfinstall && \ 
./msfinstall
bash Hk-Tools.sh
fi
if [ $Ddos = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 2 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $sniffing = 2 ]
then
clear
echo -e $red
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Hk-Tools.sh
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
curl 
https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb 
>msfinstall && \
chmod 755 msfinstall && \ 
./msfinstall
bash Hk-Tools.sh
fi
if [ $sniffing = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 3 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $wifi = 2 ]
then
clear
echo -e $red
figlet "aircrack-ng"
cd ~
apt-get install aircrack-ng
bash Hk-Tools.sh
fi
if [ $wifi = 3 ]
then
clear
echo -e $red
figlet "HT-WPS-Breaker"
cd ~
https://github.com/SilentGhostX/HT-WPS-Breaker
bash Hk-Tools.sh
fi
if [ $wifi = 4 ]
then
clear
echo -e $red
figlet "fluxion"
cd ~ 
git clone https://github.com/facebook/flux.git
bash Hk-Tools.sh
fi
if [ $wifi = 5 ]
then
clear
echo -e $red
figlet "Routersploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Hk-Tools.sh
fi
if [ $wifi = 6 ]
then
clear
echo -e $red
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
bash Hk-Tools.sh
fi
if [ $wifi = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 4 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
echo -e $green "00- Back"
read website
if [ $website = 1 ]
then
clear
echo -e $red
figlet "Sqlmap"
cd ~
git clone https://github.com/sqlmapproject/sqlmap
bash Hk-Tools.sh
fi
if [ $website = 2 ]
then
clear
echo -e $red
figlet "webscan"
cd ~
git clone https://github.com/kost/docker-webscan
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $website = 5 ]
then
clear
echo -e $red
figlet "sitebroker"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $website = 8 ]
then
clear
echo -e $red
figlet "IPlocator"
cd ~
git clone https://github.com/AndreasBriese/ipLocator
bash Hk-Tools.sh
fi
if [ $website = 9 ]
then
clear
echo -e $red
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Hk-Tools.sh
fi
if [ $website = 10 ]
then
clear
echo -e $red
figlet "hash-identifier"
git clone https://github.com/Miserlou/Hash-Identifier
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $website = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 5 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $account_Hack = 2 ]
then
clear
echo -e $red
figlet "crunch"
cd ~
apt-get install crunch
bash Hk-Tools.sh
fi
if [ $account_Hack = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 6 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $backup_recovery = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 00 ]
then
clear
bash Hk-Tools.sh
fi
if [ $Gnuroot = 7 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $payload2 = 2 ]
then
clear
echo -e $red
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Hk-Tools.sh
fi
if [ $payload2 = 3 ]
then
clear
echo -e $red
figlet "Txtool"
cd ~
git clone https://github.com/kuburan/txtool
bash Hk-Tools.sh
fi
if [ $payload2 = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $Gnuroot = 8 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $other = 2 ]
then
clear
echo -e $red
figlet "Ngrok"
cd ~
git clone https://github.com/themastersunil/ngrok
bash Hk-Tools.sh
fi
if [ $other = 3 ]
then
clear
echo -e $red
figlet "change stayle"
cd ~
git clone https://github.com/profionaldhim/etc/blob/master/bash.bashrc
cp bash.bashrc etc
bash Hk-Tools.sh
fi
if [ $other = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
fi
if [ $name = 2 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-------------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
fi
if [ $termux = 2 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $ter_sniffing = 2 ]
then
clear
echo -e $red
figlet "Routersploit"
cd ~
git clone
https://github.com/reverse-shell/routersploit
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $ter_sniffing = 4 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
fi
if [ $ter_sniffing = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $termux = 3 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $wifi2 = 2 ]
then
clear
echo -e $red
figlet "wifite2"
cd ~
git clone https://github.com/derv82/wifite2.git
bash Hk-Tools.sh
fi
if [ $wifi2 = 3 ]
then
clear
echo -e $red
figlet "HT-WPS-Breaker"
cd ~
git clone https://github.com/SilentGhostX/HT-WPS-Breaker
bash Hk-Tools.shfi
fi
if [ $wifi2 = 4 ]
then
clear
echo -e $red
figlet "fluxion"
cd ~
git clone https://github.com/facebook/flux.git
bash Hk-Tools.sh
fi
if [ $wifi2 = 5 ]
then
clear
echo -e $red
figlet "RouterSploit"
cd ~
git clone https://github.com/reverse-shell/routersploit
bash Hk-Tools.sh
fi
if [ $wifi2 = 6 ]
then
clear
echo -e $red
figlet "airgeddon"
cd ~
git clone https://github.com/v1s1t0r1sh3r3/airgeddon
bash Hk-Tools.sh
fi
if [ $wifi2 = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $termux = 4 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim "
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
git clonehttps://github.com/sqlmapproject/sqlmap
bash Hk-Tools.sh
fi
if [ $ter_website = 2 ]
then
clear
echo -e $red
figlet "webscan"
cd ~
git clonehttps://github.com/kost/docker-webscan
bash Hk-Tools.sh
fi
if [ $ter_website = 3 ]
then
clear
echo -e $red
figlet "Xshell"
cd ~
git clone https://github.com/Ubaii/Xshell
bash Hk-Tools.sh
fi
if [ $ter_website = 4 ]
then
clear
echo -e $red
figlet "scriptux"
cd ~
git clone https://github.com/Gameye98/Scriptux
bash Hk-Tools.sh
fi
if [ $ter_website = 5 ]
then
clear
echo -e $red
figlet "sitebrokler"
cd ~
git clone https://github.com/Anon-Exploiter/SiteBroker
bash Hk-Tools.sh
fi
if [ $ter_website = 6 ]
then
clear
echo -e $red
figlet "nmap"
apt install nmap
bash Hk-Tools.sh
fi
if [ $ter_website = 7 ]
then
clear
echo -e $red
figlet "Devploit"
git clone https://github.com/joker25000/Devploit
bash Hk-Tools.sh
fi
if [ $yer_website = 8 ]
then
clear
echo -e $red
figlet "IPlocator"
cd ~
git clonehttps://github.com/AndreasBriese/ipLocator
bash Hk-Tools.sh
fi
if [ $ter_website = 9 ]
then
clear
echo -e $red
figlet "sniper-h"
git clone https://github.com/laser010/sniper-h
bash Hk-Tools.sh
fi
if [ $ter_website = 10 ]
then
clear
echo -e $red
figlet "hash-identifier"
git clonehttps://github.com/Miserlou/Hash-Identifier
bash Hk-Tools.sh
fi
if [ $ter_website = 11 ]
then
clear
echo -e $red
figlet "dirsearch"
cd ~
git clone https://github.com/maurosoria/dirsearch
bash Hk-Tools.sh
fi
if [ $ter_website = 12 ]
then
clear
echo -e $red
figlet "Google-Dork-Scan"
cd ~
git clone https://github.com/ReiGelado/Google-Dork-scan
bash Hk-Tools.sh
fi
if [ $ter_website = 13 ]
then
clear
echo -e $red
figlet "admin-panel-finder"
cd ~
git clone https://github.com/bdblackhat/admin-panel
bash Hk-Tools.sh
fi
if [ $ter_website = 14 ]
then
clear
echo -e $red
figlet "XSStrike"
cd ~
git clone https://github.com/UltimateHackers/XSStrike
bash Hk-Tools.sh
fi
if [ $ter_website = 15 ]
then
clear
echo -e $red
figlet "XAttacker"
cd ~
git clone https://github.com/Moham3dRiahi/XAttacker
bash Hk-Tools.sh
fi
if [ $ter_website = 16 ]
then
clear
echo -e $red
figlet "OWScan"
cd ~
git clone https://github.com/Gameye98/OWScan
bash Hk-Tools.sh
fi
if [ $ter_website = 00 ]
then
clear
echo -e $red
figlet "back"
bash Hk-Tools.sh
fi
fi
if [ $termux = 5 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-------------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $hackacc = 2 ]
then
clear
echo -e $red
figlet "weeman"
git clone https://github.com/evait-security/weeman.git
bash Hk-Tools.sh
fi
if [ $hackacc = 3 ]
then
clear
echo -e $red
figlet "crunch"
git clone https://github.com/KURO-CODE/Crunch-Cracker.git
bash Hk-Tools.sh
fi
if [ $hackacc = 4 ]
then
clear
echo -e $red
figlet "socialfish"
git clone https://github.com/UndeadSec/SocialFish
bash Hk-Tools.sh
fi
if [ $hackacc = 5 ]
then
clear
echo -e $red
figlet "Hunner"
git clone https://github.com/b3-v3r/Hunner.git
bash Hk-Tools.sh
fi
if [ $hackacc = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $termux = 6 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $backup_recovery2 = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $termux = 7 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $payload = 2 ]
then
clear
echo -e $red
figlet "PAYMAX"
cd ~
git clone https://github.com/Matrix07ksa/PAYMAX
bash Hk-Tools.sh
fi
if [ $payload = 3 ]
then
clear
echo -e $red
figlet "Txtool"
cd ~
git clone https://github.com/kuburan/txtool
bash Hk-Tools.sh
fi
if [ $payload = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
if [ $termux = 00 ]
then
clear
bash Hk-Tools.sh
fi
if [ $termux = 8 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
fi
if [ $other2 = 2 ]
then
clear
echo -e $red
figlet "Ngrok"
cd ~
git clone https://github.com/themastersunil/ngrok
bash Hk-Tools.sh
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
bash Hk-Tools.sh
fi
if [ $other2 = 00 ]
then
clear
bash Hk-Tools.sh
fi
fi
fi
if [ $name = 3 ]
then
clear
toilet -f term -F border --gay "fb : www.fb.com/profionaldhim"
echo -e $red
figlet -f slant "HK-Tools"
echo -e $green"-----------------------------------"
toilet "YEMEN" | lolcat
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
bash Hk-Tools.sh
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
