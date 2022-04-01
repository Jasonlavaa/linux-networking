ifconfig  <arg2> 20.30.40.1
ifconfig  <arg2> netmask 255.255.255.0 
ifconfig  <arg2> broadcast 20.30.40.255
echo “1”   /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i eth1 -j ACCEPT 
iptables -A FORWARD -o eth1 -j ACCEPT 
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
