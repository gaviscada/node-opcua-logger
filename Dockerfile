FROM node:10
MAINTAINER gavioto

RUN mkdir /workspace

WORKDIR /workspace

RUN git clone https://github.com/gaviscada/node-opcua-logger/

WORKDIR /workspace/node-opcua-logger

RUN git branch devcontainer

RUN yarn install

CMD ["yarn", "run",  "start"]


