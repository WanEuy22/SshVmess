#!/bin/bash
apt-get install lolcat -y
clear

echo -e "×××××REQUEST ACCESS SCRIPT××××××" | lolcat
echo -e "--------------------------------" | lolcat
read -p "Input Your License Key : " pwd

user=$( curl -s "LINK .TXT" | grep $pwd )
if [ "$pwd" == "$user" ];
then

clear
echo -e "Checking Status License..." | lolcat
sleep 2
clear
echo -e "License Verification Success!" lolcat
sleep 2
clear
echo -e "Wait To Process Install" | lolcat
sleep 3
clear
rm -rf /root/setup.sh
wget -O /root/install.sh "LINK GITHUB" >/dev/null 2>&1
chmod +x /root/install.sh
./install.sh

else

clear
echo -e "Checking Status License..." | lolcat
sleep 2
clear
echo -e "License Wrong or Expired.!!" | lolcat
sleep 2
clear
echo -e "Permission Denied.!! Wrong License or Expired License" | lolcat
sleep 1.5
echo -e "Wait To Process Stop Installation" | lolcat
rm -rf /root/setup.sh
exit

fi
