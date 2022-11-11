FROM node:16.15.1-alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm i
COPY . ./

RUN npm run build
RUN rm -r src/
RUN rm -r static/

EXPOSE 3000
CMD ["node","build"]
