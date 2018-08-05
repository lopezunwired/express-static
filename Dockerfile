FROM node:8.1.4-alpine

RUN mkdir -p /app && mkdir -p /app/public

## ADD package.json /app/package.json 
## ADD mini-webserver.js /app/mini-webserver.js

COPY package.json /app/package.json 
COPY mini-webserver.js /app/mini-webserver.js
COPY ./content /app/public

RUN cd /app && npm install

USER 1001
EXPOSE 3000

CMD ["node", "/app/mini-webserver.js"]
