machinename=machine-name
yum -y update
yum install -y ansible git
hostnamectl set-hostname --static $machinename
echo 'preserve_hostname: true' | tee -a /etc/cloud/cloud.cfg
reboot
