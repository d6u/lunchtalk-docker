FROM node:0.10.36

COPY src /src
COPY package.json /package.json

RUN npm install

ENV NODE_ENV production
ENV WHATEVER_ENV hmm

EXPOSE 3000

CMD ["npm", "start"]
