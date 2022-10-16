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
echo -e "[${GREEN}A${NC}] ${rd}•${NC} Membuat Akun SSH & OpenVPN"
echo -e "[${GREEN}B${NC}] ${rd}•${NC} Perpanjang Akun SSH & OpenVPN"
echo -e "[${GREEN}C${NC}] ${rd}•${NC} Daftar Member SSH & OpenVPN"
echo -e "[${GREEN}D${NC}] ${rd}•${NC} Cek Pengguna Login SSH & OpenVPN"
echo -e "[${GREEN}E${NC}] ${rd}•${NC} Hapus Pengguna SSH & OpenVPN"
echo -e "[${GREEN}F${NC}] ${rd}•${NC} Membuat Akun Trial SSH & OpenVPN"
echo -e "[${GREEN}G${NC}] ${rd}•${NC} Hapus Akun Expired SSH & OpenVPN"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m                      ⇱ Menu Vmess ⇲                         \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e "[${GREEN}H${NC}] ${rd}•${NC} Membuat Akun Xray/Vmess"
echo -e "[${GREEN}i${NC}] ${rd}•${NC} Perpanjang Akun Vmess"
echo -e "[${GREEN}J${NC}] ${rd}•${NC} Hapus Akun Xray/Vmess"
echo -e "[${GREEN}K${NC}] ${rd}•${NC} Cek Vmess User Login"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m                      ⇱ Menu System ⇲                        \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e "[${GREEN}01${NC}] ${rd}×${NC} Add New Subdomain       [${GREEN}06${NC}] ${rd}×${NC} Renew Certificate"
echo -e "[${GREEN}02${NC}] ${rd}×${NC} Cek Status Layanan      [${GREEN}07${NC}] ${rd}×${NC} Cek Pemakaian Ram"
echo -e "[${GREEN}03${NC}] ${rd}×${NC} Restart Semua Layanan   [${GREEN}08${NC}] ${rd}×${NC} SpeedTest Server"
echo -e "[${GREEN}04${NC}] ${rd}×${NC} Cek Spesifikasi VPS     [${GREEN}09${NC}] ${rd}×${NC} Change Password VPS"
echo -e "[${GREEN}05${NC}] ${rd}×${NC} Reboot Your VPS         [${GREEN}10${NC}] ${rd}×${NC} About"
echo -e ""
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e "\E[45;1;39m               ⇱ Script Installer SSH & VMESS ⇲              \E[0m"
echo -e "═════════════════════════════════════════════════════════════" | lolcat
echo -e ""
echo -e  ""
 read -p " Select Menu (A - K or 1 - 10) : " menu
echo -e   ""
case $menu in
A)
addssh
;;
B)
renewssh
;;
C)
member
;;
D)
cekssh
;;
E)
delssh
;;
F)
trialssh
;;
G)
delexp
;;
H)
addvmess
;;
i)
renewvmess
;;
J)
delvmess
;;
K)
cekvmess
;;
1 | 01)
addhost
;;
2 |02)
running
;;
3 | 03)
restart
;;
4 | 04)
spek
;;
5 | 05)
echo -e "${GREEN}Prosess Reboot Segera Dimulai${NC}"
sleep 3
reboot
;;
6 | 06)
certv2ray
;;
7 | 07)
ram
;;
8 | 08)
speedtest
;;
9 | 09)
passwd
;;
10)
about
;;
0 | 00)
menu
;;
*)
exit
;;
esac
