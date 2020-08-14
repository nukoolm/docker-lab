FROM docker pull node

MAINTAINER Nukool Muangsoon (nukoolmuangsoon@gmail.com) 
LABEL Description="NodeJS-Sample-app Build Container"

WORKDIR /app
ADD . .

RUN npm install
EXPOSE 3000

CMD ["node", "app.js"]
