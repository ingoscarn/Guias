/sbin/blockdev --setra 2048 /dev/sdb1 #Disk Readahead
echo '/sbin/blockdev --setra 2048 /dev/sdb1' >> /etc/rc.local
chmod +x /etc/rc.d/rc.local
vi /etc/selinux/config #SELINUX=disabled
setenforce 0
cat /sys/kernel/mm/transparent_hugepage/enabled #check
echo always > /sys/kernel/mm/transparent_hugepage/enabled #set
service iptables save ##firewall
systemctl mask firewalld
systemctl disable firewalld
systemctl stop firewalld
systemctl status chronyd #Enable chronyd
yum update tzdata ##package 
yum install gdb
yum install mcelog
yum install sysstat
rm -f /etc/localtime ##ntp
ln -s /usr/share/zoneinfo/Mexico/General /etc/localtime
ntpdate 0.us.pool.ntp.org
hwclock --systohc
date
reboot now