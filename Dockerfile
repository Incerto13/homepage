#stage 1
FROM node:12 as build-step
WORKDIR /app

# copy files and install dependencies
COPY package.json /app
RUN npm install
COPY . /app
    
#stage 2
FROM nginx:alpine
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-step /app/homepage /usr/share/nginx/html
EXPOSE 80:80