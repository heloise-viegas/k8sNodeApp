FROM node:latest
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
#RUN npm audit fix --force
COPY . .
EXPOSE 8080
CMD ["node","index.js"]
