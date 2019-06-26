FROM node:8.10

# Create app directory
WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app
CMD node app.js
EXPOSE 3001

CMD [ "npm", "start" ]