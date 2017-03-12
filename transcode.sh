#!/bin/bash
HandBrakeCLI -i /home/tianyi/movie -o /home/tianyi/output.mp4 -e x264 -q 20 -B 160 --encoder-preset fast -f av_mp4 --all-audio --all-subtitles
scp -o StrictHostKeyChecking=no -i /home/tianyi/.ssh/id_rsa /home/tianyi/output.mp4 root@tau.tianyi.io:/root/transcodes/movie.mp4
gcloud compute instances delete preempt-8-core --zone=europe-west1-d --quiet
