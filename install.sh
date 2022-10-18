#!/bin/bash
apt update && apt upgrade -y && sleep 2 && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip
apt-get install lolcat -y
clear

echo -e " _____ ____  _____ _____" | lolcat
echo -e "|  ___|  _ \| ____| ____|" | lolcat
echo -e "| |_  | |_) |  _| |  _|" | lolcat
echo -e "|  _| |  _ <| |___| |___" | lolcat
echo -e "|_|   |_| \_\_____|_____|" | lolcat
echo -e "Script By : Horas Marolop Amsal Siregar" | lolcat
echo -e "Recode By : WaanStore" | lolcat
echo -e "--------------------------------------" | lolcat
echo -e "××××××××REQUEST ACCESS SCRIPT×××××××××" | lolcat
echo -e "--------------------------------------" | lolcat
read -p "Input Your License Key : " pwd

user=$( curl -s "https://data.vip-user.me/license.txt" | grep $pwd )
if [ "$pwd" == "$user" ];
then

clear
echo -e "Checking Status License..." | lolcat
sleep 2
clear
echo -e "License Verification Success!" | lolcat
sleep 2
clear
echo -e "Wait To Process Install" | lolcat
sleep 3
clear
rm -rf /root/setup.sh
wget -O /root/setup.sh "https://data.vip-user.me/setup.sh" >/dev/null 2>&1
chmod +x /root/setup.sh
bash setup.sh

else

clear
echo -e "Checking Status License..." | lolcat
sleep 2
clear
echo -e "License Wrong or Expired.!!" | lolcat
sleep 2
clear
echo -e "Permission Denied.!! Wrong License or Expired License" | lolcat
sleep 2
echo -e "Wait To Process Stop Installation" | lolcat
sleep 2
rm -rf /root/setup.sh
exit

fi
