machinename=machine-name
apt-get update
apt-get install --yes ansible
hostnamectl set-hostname --static $machinename
echo 'preserve_hostname: true' | tee -a /etc/cloud/cloud.cfg
reboot
