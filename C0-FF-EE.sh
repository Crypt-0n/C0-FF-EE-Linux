mkdir ./logs/

uname -a > ./logs/uname.txt
uptime > ./logs/uptime.txt
timedatectl > ./logs/timedatectl.txt
cat /root/.bash_history > ./logs/bash_history.txt
mount > ./logs/mount.txt
w > ./logs/w.txt
lastlog > ./logs/lastlog.txt
last > ./logs/last.txt
faillog -a > ./logs/faillog.txt
cat /etc/passwd > ./logs/passwd.txt
cat /etc/shadow > ./logs/shadown.txt
cat /etc/group > ./logs/group.txt
cat /etc/sudoers > ./logs/sudoers.txt
awk -F: '($3 =="0") {print}' /etc/passwd > ./logs/password_id0.txt
cat /root/.ssh/authorized_keys > ./logs/ssh_keys.txt
lsof -u root > ./logs/lsof-u_root.txt
ip a > ./logs/ip_a.txt
netstat -antup > ./logs/netstat-antup.txt
netstat -nap > ./logs/netstat-nap.txt
route > ./logs/route.txt
arp -a > ./logs/arp.txt
lsof -i > ./logs/lsof-i.txt
ps -aux > ./logs/ps-aux.txt
lsmod > ./logs/lsmod.txt
lsof > ./logs/lsof.txt
chkconfig --list > ./logs/chkconfig.txt
cat /etc/pam.d/common* > ./logs/pam.txt
crontab -l > ./logs/crontab1.txt
crontab -u root -l > ./logs/crontab_root.txt
cat /etc/crontab > ./logs/crontab2.txt
ls /etc/cron.* > ./logs/cron_dir.txt
cat /root/.*history > ./logs/history.txt
df -ah > ./logs/df-ah.txt
ls -la /etc/init.d/ > ./logs/ls-la.txt
lsattr -R / | grep "\-i-" > ./logs/lsattr.txt
ls -la /root > ./logs/ls-la_root.txt
find / -printf "%m;%Ax;%AT;%Tx;%TT;%Cx;%CT;%U;%G;%s;%p\n" > ./logs/files.txt
ls /etc/init/*.conf > ./logs/init_dir.txt
iptables-save > firewall.out > ./logs/iptables-save.txt
iptable -L > ./logs/iptable.txt
cat /etc/hosts > ./logs/hosts.txt
cat /var/log/auth.log > ./logs/auth.log
cp -R /var/log ./logs/logs

tar zcvf logs.tar.gz ./logs/

