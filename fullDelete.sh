# Reference script for completely removing k3s, networking from nodes. Do after ansible k3s-nuke. TODO: add to ansible in post-tasks
sudo su -
rm -rf /var/lib/rancher /etc/rancher ~/.kube/*
ip addr
ip addr flush dev lo
ip addr add 127.0.0.1/8 dev lo
ip link delete vxlan.calico
ip addr
iptables -S
iptables-save | grep -i cali | iptables -F
iptables-save | grep -i cali | iptables -X
iptables -S
