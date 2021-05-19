FROM node:14.16.1

WORKDIR /usr/src/app

COPY package*.json yarn.lock ./

COPY . .

RUN yarn install

EXPOSE 3000

CMD ["tail", "-F", "/dev/null"]
#CMD ["yarn", "start"]