#!/bin/bash
HandBrakeCLI -i /home/tianyi/movie.mp4 -o /home/tianyi/output.mp4 -e x264 -q 20 -B 160 --encoder-preset fast
scp -o StrictHostKeyChecking=no /home/tianyi/output.mp4 root@tianyi.io:/root/transcodes/movie.mp4
gcloud compute instances delete preempt-8-core --zone=asia-east1-a --quiet
