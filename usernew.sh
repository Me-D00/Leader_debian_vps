# !/bin/bash
# Script auto create user SSH

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`curl icanhazip.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====SSH Account===="
echo -e "====  Premium Leader SSH   ===="
echo -e "Host              : $IP" 
echo -e "Port OpenSSH      : 22,143"
echo -e "Dropbear          : 442,44,77"
echo -e "SSL/TLS           : 443"
echo -e "SSL/TLS OpenSSH   : 43"
echo -e "SSL/TLS Dropbear  : 222,777,444"
echo -e "SSL/TLS SSR       : 69"
echo -e "Speed Server      : 2 Gbps"
echo -e "Transfer          : 2 TB"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "-----------------------------"
echo -e "Aktif Sampai      : $exp"
echo -e "============================="

echo -e "Mod by LeoMedo"
echo -e ""
