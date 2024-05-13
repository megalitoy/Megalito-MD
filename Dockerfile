FROM quay.io/souravkl11/mgnt-v3:latest

RUN git clone https://github.com/souravkl11/megalito-MD /railway/Megalito
WORKDIR /railway/Megalito
ENV KE=Africa/Kenya
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
