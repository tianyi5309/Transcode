sudo apt-get install handbrake-cli -y
sudo echo "[Service]
ExecStart=/usr/bin/transcode.sh" > /etc/systemd/system/transcode.service
sudo echo "#!/bin/bash
HandBrakeCLI -i movie.mp4 -o output.mp4 -e x264 -q 20 -B 160 --encoder-preset fast; scp -o StrictHostKeyChecking=no ~/output.mp4 root@tianyi.io:/root/transcodes/movie.mp4; gcloud compute instances delete preempt-8-core --zone=asia-east1-a --quiet" > /usr/bin/transcode.sh
sudo chmod +x /usr/bin/transcode.sh
sudo systemctl enable transcode.service
