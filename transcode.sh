#!/bin/bash
HandBrakeCLI -i /home/tianyi/movie -o /home/tianyi/output -e x264 -q 20 -B 160 --encoder-preset fast -f av_mp4 --all-audio --all-subtitles
scp -o StrictHostKeyChecking=no -i /home/tianyi/.ssh/id_rsa /home/tianyi/output root@tau.tianyi.io:/root/transcodes/movie
gcloud compute instances delete preempt-8-core --zone=europe-west1-d --quiet
