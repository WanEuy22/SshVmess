#!/bin/bash
GREEN='\033[0;32m'
NC='\e[0m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear

echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m                   ⇱ Menu SSH & OpenVPN  ⇲                   \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e "[${GREEN}01${NC}] ${rd}•${NC} Membuat Akun SSH & OpenVPN"
echo -e "[${GREEN}02${NC}] ${rd}•${NC} Perpanjang Akun SSH & OpenVPN"
echo -e "[${GREEN}03${NC}] ${rd}•${NC} Daftar Member SSH & OpenVPN"
echo -e "[${GREEN}04${NC}] ${rd}•${NC} Cek Pengguna Login SSH & OpenVPN"
echo -e "[${GREEN}05${NC}] ${rd}•${NC} Hapus Pengguna SSH & OpenVPN"
echo -e "[${GREEN}06${NC}] ${rd}•${NC} Membuat Akun Trial SSH & OpenVPN"
echo -e "[${GREEN}07${NC}] ${rd}•${NC} Hapus Akun Expired SSH & OpenVPN"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m                      ⇱ Menu Vmess ⇲                         \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e "[${GREEN}08${NC}] ${rd}•${NC} Membuat Akun Xray/Vmess"
echo -e "[${GREEN}09${NC}] ${rd}•${NC} Perpanjang Akun Vmess"
echo -e "[${GREEN}10${NC}] ${rd}•${NC} Hapus Akun Xray/Vmess"
echo -e "[${GREEN}11${NC}] ${rd}•${NC} Cek Vmess User Login"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m                      ⇱ Menu System ⇲                        \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e "[${GREEN}12${NC}] ${rd}×${NC} Add New Subdomain       [${GREEN}17${NC}] ${rd}×${NC} Renew Certificate"
echo -e "[${GREEN}13${NC}] ${rd}×${NC} Cek Status Layanan      [${GREEN}18${NC}] ${rd}×${NC} Cek Pemakaian Ram"
echo -e "[${GREEN}14${NC}] ${rd}×${NC} Restart Semua Layanan   [${GREEN}19${NC}] ${rd}×${NC} SpeedTest Server"
echo -e "[${GREEN}15${NC}] ${rd}×${NC} Cek Spesifikasi VPS     [${GREEN}20${NC}] ${rd}×${NC} Change Password VPS"
echo -e "[${GREEN}16${NC}] ${rd}×${NC} Reboot Your VPS         [${GREEN}21${NC}] ${rd}×${NC} About"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m               ⇱ Script Installer SSH & VMESS ⇲              \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e  ""
 read -p " Input Your Choose : " menu
echo -e   ""
case $menu in
1 | 01)
addssh
;;
2 | 02)
renewssh
;;
3 | 03)
member
;;
4 | 04)
cekssh
;;
5 | 05)
delssh
;;
6 | 06)
trialssh
;;
7 | 07)
delexp
;;
8 | 08)
addvmess
;;
9 | 09)
renewvmess
;;
10)
delvmess
;;
11)
cekvmess
;;
12)
addhost
;;
13)
running
;;
14)
restart
;;
15)
system
;;
16)
echo -e "${GREEN}Prosess Reboot Segera Dimulai${NC}"
sleep 3
reboot
;;
17)
certv2ray
;;
18)
ram
;;
19)
speedtest
;;
20)
passwd
;;
21)
about
;;
0 | 00)
menu
;;
*)
exit
;;
esac
