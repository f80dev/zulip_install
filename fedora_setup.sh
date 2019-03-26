#!/usr/bin/env bash

cd /root

curl -fsSL https://get.docker.com | sh
systemctl start docker && systemctl start enable

dnf install -y git
dnf install -y docker-compose

git clone https://github.com/zulip/docker-zulip.git
cd docker-zulip

nano docker-compose.yml

docker-compose up