FROM node:14.12.0

WORKDIR /usr/src/ai-brain-api

COPY ./ ./

RUN npm install

CMD ["/bin/bash"] 
