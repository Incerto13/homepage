#stage 1
FROM node:12 as build-step
WORKDIR /usr/src/app

# copy files and install dependencies
COPY package.json /usr/src/app/
RUN npm install
COPY . .
# run link-expansion script and then build index.html
RUN npm run build
    
#stage 2
FROM nginx:alpine
COPY --from=build-step /usr/src/app /usr/share/nginx/html