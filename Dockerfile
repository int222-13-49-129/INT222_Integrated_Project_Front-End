
FROM node:14.16-alpine3.10 as step01
WORKDIR /frontend/src
COPY ./package.json /frontend/src/package.json
RUN npm install
COPY . /frontend/src
RUN npm run build

ENV HOST 0.0.0.0   

EXPOSE 5000

CMD ["npm", "run", "start"]