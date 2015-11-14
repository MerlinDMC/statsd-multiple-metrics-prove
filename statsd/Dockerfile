FROM node:5

RUN git clone https://github.com/etsy/statsd.git /statsd
RUN cd /statsd && npm install --production
RUN echo "{backends:['./backends/console']}" > /statsd/console-config.js

WORKDIR /statsd

EXPOSE 8125

CMD [ "node", "stats.js", "console-config.js" ]

