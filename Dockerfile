FROM node:14-alpine
WORKDIR /src
COPY ./src .
RUN npm install --only=production
EXPOSE 443
CMD node index.js