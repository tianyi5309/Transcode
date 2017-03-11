sudo apt-get install handbrake-cli -y
sudo wget https://raw.githubusercontent.com/tianyi5309/Transcode/master/transcode.sh -O /usr/bin/transcode.sh
sudo wget https://raw.githubusercontent.com/tianyi5309/Transcode/master/transcode.service -O /etc/systemd/system/transcode.service
sudo chmod +x /usr/bin/transcode.sh
sudo chmod 755 /etc/systemd/system/transcode.service
sudo systemctl enable transcode.service
