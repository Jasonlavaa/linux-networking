nmcli d 
echo “1” >  /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i eth1 -j ACCEPT 
iptables -A FORWARD -o eth1 -j ACCEPT 
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
