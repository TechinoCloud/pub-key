clear
echo
echo The script is running, please allow it up to 1 minute to finish.
sleep 2

mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
rm -rf ~/.ssh/*
wget https://raw.githubusercontent.com/TechinoCloud/pub-key/main/authorized_keys
rm -rf /etc/ssh/sshd_config
cd /etc/ssh/
wget https://raw.githubusercontent.com/TechinoCloud/pub-key/main/sshd_config
service sshd restart

clear
echo Complete Key Injection
echo
sleep 2
