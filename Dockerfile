#Establishing Node version to use
FROM node:18

#Copying all images from /greeno-flowers main path into /greeno-flowers/app
COPY . /app

#Switching to directory /greeno-flowers/app where root of our project is
WORKDIR /app

#installing all node packages
RUN npm install

#Exposing port 3000 in project
EXPOSE 3000

#running command "npm start"
CMD [ "npm", "start" ]