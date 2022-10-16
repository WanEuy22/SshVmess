#!/bin/bash
apt-get install lolcat -y
read -p "Type License For Script : " pwd

user=$( curl -s "LINK .TXT" | grep $pwd )
if [ "$pwd" == "$user" ];
then

clear
echo -e "Checking Status License..."
sleep 2
clear
echo -e "License Verification Success!"
sleep 2
clear
echo -e "Wait To Process Install" 
sleep 3
clear
rm -rf /root/setup.sh
wget -O /root/install.sh "LINK GITHUB" >/dev/null 2>&1
chmod +x /root/install.sh
./install.sh

else

clear
echo -e "Checking Status License..."
sleep 2
clear
echo -e "License Wrong or Expired.!!"
sleep 2
clear
echo -e "Permission Denied.!! Wrong License or Expired License"
sleep 1.5
echo -e "Wait To Process Stop Installation"
rm -rf /root/setup.sh
exit

fi
