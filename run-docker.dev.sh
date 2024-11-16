# !/bin/bash

source ../.env

# generate .env file in homepage root directory to use in expanding-links script 
# - only necessary in dev env bc expansion-script always expecting to be in same directory as .env in higher environments

### row 1
echo REACT_COURSE_ADMIN_URL=$REACT_COURSE_ADMIN_URL > .env
echo REACT_ELECTORAL_MAP_URL=$REACT_ELECTORAL_MAP_URL >> .env
echo REACT_TO_DO_URL=$REACT_TO_DO_URL >> .env

### row 2
echo NEST_TO_DO_API_URL=$NEST_TO_DO_API_URL >> .env
echo NEST_BLOG_API_URL=$NEST_BLOG_API_URL >> .env
echo NEST_COURSE_ADMIN_API_URL=$NEST_COURSE_ADMIN_API_URL >> .env

# expand homepage links and generate final index.html file
bash expand-homepage-links.sh index-no-links.html index.html

gulp # build

sudo docker compose -f docker-compose.dev.yml up --build -d

