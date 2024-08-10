# !/bin/bash

source .env

# expand homepage links and generate final index.html file
bash expand-homepage-links.sh index-no-links.html index.html
gulp # build
sudo docker compose up --build -d
